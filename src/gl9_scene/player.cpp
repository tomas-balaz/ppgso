#include "player.h"
#include "scene.h"
#include "asteroid.h"
#include "projectile.h"
#include "explosion.h"

#include <shaders/diffuse_vert_glsl.h>
#include <shaders/diffuse_frag_glsl.h>

// shared resources
std::unique_ptr<ppgso::Mesh> Player::mesh;
std::unique_ptr<ppgso::Texture> Player::texture;
std::unique_ptr<ppgso::Shader> Player::shader;

Player::Player() {
  // Scale the default model
  scale *= 3.0f;

  // Initialize static resources if needed
  if (!shader) shader = std::make_unique<ppgso::Shader>(diffuse_vert_glsl, diffuse_frag_glsl);
  if (!texture) texture = std::make_unique<ppgso::Texture>(ppgso::image::loadBMP("corsair.bmp"));
  if (!mesh) mesh = std::make_unique<ppgso::Mesh>(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\jazdec.obj)");
}

bool Player::update(Scene &scene, float dt) {

   float speed = 20 * dt;

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

    if (distance(position, asteroid->position) < asteroid->scale.y) {
      // Explode
      auto explosion = std::make_unique<Explosion>();
      explosion->position = position;
      explosion->scale = scale * 3.0f;
      scene.objects.push_back(move(explosion));

      // Die
      return false;
    }
  }

  // Keyboard controls
  if(scene.keyboard[GLFW_KEY_LEFT]) {
    direction = {1, 0, 0};
    rotation.y = -ppgso::PI/2.0f;
  } else if(scene.keyboard[GLFW_KEY_RIGHT]) {
      direction = {-1, 0, 0};
    rotation.y = ppgso::PI/2.0f;
  } else if(scene.keyboard[GLFW_KEY_DOWN]) {
      direction = {0, -1, 0};
      rotation.y = -ppgso::PI;
  } else if(scene.keyboard[GLFW_KEY_UP]) {
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

  // Firing projectiles
  if(scene.keyboard[GLFW_KEY_SPACE] && fireDelay > fireRate) {
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

void Player::render(Scene &scene) {
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

void Player::onClick(Scene &scene) {
  std::cout << "Player has been clicked!" << std::endl;
}

bool Player::isOutOfMap() {
    return abs(position.x) > 35 or abs(position.y) > 35;
}
