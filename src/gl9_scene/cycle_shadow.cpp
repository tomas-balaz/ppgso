
#include "cycle_shadow.h"

#include <glm/gtc/random.hpp>
#include "player.h"
#include "projectile.h"

#include <shaders/diffuse_vert_glsl.h>
#include <shaders/diffuse_frag_glsl.h>


// Static resources
std::unique_ptr<ppgso::Mesh> CycleShadow::mesh;
std::unique_ptr<ppgso::Texture> CycleShadow::texture;
std::unique_ptr<ppgso::Shader> CycleShadow::shader;

CycleShadow::CycleShadow(){
  // Set random scale speed
  scale = glm::vec3{.2f, .9f, .1f};


  // Initialize static resources if needed
  if (!shader) shader = std::make_unique<ppgso::Shader>(diffuse_vert_glsl, diffuse_frag_glsl);
  if (!texture) texture = std::make_unique<ppgso::Texture>(ppgso::image::loadBMP(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\shadow_color.bmp)"));
  if (!mesh) mesh = std::make_unique<ppgso::Mesh>(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\circle.obj)");
}

bool CycleShadow::update(Scene &scene, float dt) {
  // Count time alive
  age += dt;

  // Delete when alive longer than 10s or out of visibility
//  if (age > .2f) return false;

  bool found = 0;

  for ( auto& obj : scene.objects ) {
    // Ignore self in scene
    if (obj.get() == this)
      continue;

    auto player = dynamic_cast<Player*>(obj.get());
    if (!player) continue;

    found = 1;
    position.x = player->position.x;
    position.y = player->position.y;
    if (glm::length(player->direction.x) == 1.0f) {
      scale = glm::vec3{.9f, .3f, .1f};
    }
    else if (glm::length(player->direction.y) == 1.0f) {
      scale = glm::vec3{.3f, .9f, .1f};
    }
    break;
  }

  if (!found) return false;

  // Generate modelMatrix from position, rotation and scale
  generateModelMatrix();

  return true;
}

void CycleShadow::render(Scene &scene) {
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
