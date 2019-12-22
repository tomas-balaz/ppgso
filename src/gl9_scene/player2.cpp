#include "player2.h"
#include "scene.h"
#include "asteroid.h"
#include "projectile.h"
#include "explosion.h"
#include "player.h"
#include "star.h"

#include <shaders/diffuse_vert_glsl.h>
#include <shaders/diffuse_frag_glsl.h>

// shared resources
std::unique_ptr<ppgso::Mesh> Player2::mesh;
std::unique_ptr<ppgso::Texture> Player2::texture;
std::unique_ptr<ppgso::Shader> Player2::shader;

Player2::Player2() {
  // Scale the default model
  scale *= 3.0f;
  position.x = 15.f;
  position.z = 0.f;

  // Initialize static resources if needed
  if (!shader) shader = std::make_unique<ppgso::Shader>(diffuse_vert_glsl, diffuse_frag_glsl);
  if (!texture) texture = std::make_unique<ppgso::Texture>(ppgso::image::loadBMP(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\corsair_blue.bmp)"));
  if (!mesh) mesh = std::make_unique<ppgso::Mesh>(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\jazdec.obj)");
}

bool Player2::update(Scene &scene, float dt) {

  float speed = 15.f * dt;

  // Fire delay increment
  fireDelay += dt;

  // Hit detection
  for ( auto& obj : scene.objects ) {
    // Ignore self in scene
    if (obj.get() == this)
      continue;

    // We only need to collide with asteroids, ignore other objects
    auto asteroid = dynamic_cast<Asteroid*>(obj.get());
    if (!asteroid) continue;

    if (distance(position, asteroid->position) < asteroid->scale.y && asteroid->age > .3) {
      // Explode
      auto explosion = std::make_unique<Explosion>();
      explosion->position = position;
      explosion->scale = scale * 3.0f;
      scene.objects.push_back(move(explosion));

      // Die
      return false;
    }
  }

  if (opponent_alive)
  {
    bool opponent_found = false;

    for ( auto& obj : scene.objects ) {
      // Ignore self in scene
      if (obj.get() == this)
        continue;

      auto p = dynamic_cast<Player*>(obj.get());
      if (!p) continue;

      opponent_found = true;
    }

    if (!opponent_found) {
//      std::cout << "Player 2 wins!" << std::endl;
      opponent_alive = false;

      //create star object -> unique pointer
      auto star = std::make_unique<Star>();
      star->position = position;
      star->position.z -= 5.f;
      scene.objects.push_back(move(star));
    }
  }

  // Keyboard controls
  if(scene.keyboard[GLFW_KEY_A]) {
    direction = {1, 0, 0};
    rotation.y = -ppgso::PI/2.0f;
  } else if(scene.keyboard[GLFW_KEY_D]) {
    direction = {-1, 0, 0};
    rotation.y = ppgso::PI/2.0f;
  } else if(scene.keyboard[GLFW_KEY_S]) {
    direction = {0, -1, 0};
    rotation.y = -ppgso::PI;
  } else if(scene.keyboard[GLFW_KEY_W]) {
    direction = {0, 1, 0};
    rotation.y = ppgso::PI*2.0f;
  }

  position += direction * speed;

  if (isOutOfMap()) {
    direction = {0, 0, 0};
    auto explosion = std::make_unique<Explosion>();
    explosion->position = position;
    explosion->scale = scale * 3.0f;
    scene.objects.push_back(move(explosion));

    // Die
    return false;
  }

  if (glm::length(direction) != 0) {
    auto obj = std::make_unique<Asteroid>();
    obj->position = position + (-direction*.03f);
//    obj->scale += abs(direction)*2.f;
    scene.objects.push_back(move(obj));
  }

  // Firing projectiles
  if(scene.keyboard[GLFW_KEY_F] && fireDelay > fireRate) {
    // Reset fire delay
    fireDelay = 0;
    // Invert file offset
    fireOffset = -fireOffset;

    auto projectile = std::make_unique<Projectile>();
    projectile->position = position + glm::vec3(0.0f, 0.0f, 0.3f) + fireOffset;
    scene.objects.push_back(move(projectile));
  }

  generateModelMatrix();
  return true;
}

void Player2::render(Scene &scene) {
  shader->use();

  // Set up light
  shader->setUniform("LightDirection", scene.lightDirection);

  // use camera
  shader->setUniform("ProjectionMatrix", scene.camera->projectionMatrix);
  shader->setUniform("ViewMatrix", scene.camera->viewMatrix);

  // render mesh
  shader->setUniform("ModelMatrix", modelMatrix);
  shader->setUniform("Texture", *texture);
  mesh->render();
}

void Player2::onClick(Scene &scene) {
  std::cout << "Player has been clicked!" << std::endl;
}

bool Player2::isOutOfMap() {
  return abs(position.x) > 35 or abs(position.y) > 35;
}
