
#include "star.h"

#include <glm/gtc/random.hpp>
#include "player.h"
#include "player2.h"

#include <shaders/diffuse_vert_glsl.h>
#include <shaders/diffuse_frag_glsl.h>


// Static resources
std::unique_ptr<ppgso::Mesh> Star::mesh;
std::unique_ptr<ppgso::Texture> Star::texture;
std::unique_ptr<ppgso::Shader> Star::shader;

Star::Star(){
  // Set random scale speed
  scale = glm::vec3{.4f, .9f, .3f};


  // Initialize static resources if needed
  if (!shader) shader = std::make_unique<ppgso::Shader>(diffuse_vert_glsl, diffuse_frag_glsl);
  if (!texture) texture = std::make_unique<ppgso::Texture>(ppgso::image::loadBMP(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\star_texture.bmp)"));
  if (!mesh) mesh = std::make_unique<ppgso::Mesh>(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\star1.obj)");
}

bool Star::update(Scene &scene, float dt) {
  // Count time alive
  age += dt;

  // Delete when alive longer than 10s or out of visibility
//  if (age > .2f) return false;

  bool found = false;

  for ( auto& obj : scene.objects ) {
    // Ignore self in scene
    if (obj.get() == this)
      continue;

    auto player1 = dynamic_cast<Player*>(obj.get());
    auto player2 = dynamic_cast<Player2*>(obj.get());
    if (!player1 && !player2) continue;

    if (player1) {
     found = true;
     position.x = player1->position.x;
     position.y = player1->position.y;
     rotation.y += ppgso::PI * dt;
    }
    else {
      found = true;
      position.x = player2->position.x;
      position.y = player2->position.y;
      rotation.y += ppgso::PI * dt;
    }
  }

  if (!found) return false;

  // Generate modelMatrix from position, rotation and scale
  generateModelMatrix();

  return true;
}

void Star::render(Scene &scene) {
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
