
#include "cube.h"

#include <glm/gtc/random.hpp>
#include "player.h"
#include "player2.h"
#include "star.h"

#include <shaders/diffuse_vert_glsl.h>
#include <shaders/diffuse_frag_glsl.h>


// Static resources
std::unique_ptr<ppgso::Mesh> Cube::mesh;
std::unique_ptr<ppgso::Texture> Cube::texture;
std::unique_ptr<ppgso::Shader> Cube::shader;

Cube::Cube(){
  // Set random scale speed
  scale = glm::vec3{1.f, 1.f, 1.f};


  // Initialize static resources if needed
  if (!shader) shader = std::make_unique<ppgso::Shader>(diffuse_vert_glsl, diffuse_frag_glsl);
  if (!texture) texture = std::make_unique<ppgso::Texture>(ppgso::image::loadBMP(R"(C:\Users\tomas\Documents\FIIT\5.semester\ppgso\data\star_texture.bmp)"));
  if (!mesh) mesh = std::make_unique<ppgso::Mesh>("cube.obj");
}

bool Cube::update(Scene &scene, float dt) {
  // Count time alive
  age += dt;

  // Delete when alive longer than 10s or out of visibility
//  if (age > .2f) return false;

  bool found = false;

  for ( auto& obj : scene.objects ) {
    // Ignore self in scene
    if (obj.get() == this)
      continue;

    auto star = dynamic_cast<Star*>(obj.get());
    if (!star) continue;

    found = true;
    position.x = star->position.x;
    position.y = star->position.y;
    rotation.x -= ppgso::PI * dt;
    rotation.y -= ppgso::PI * dt;


  }

  if (!found) return false;

  // Generate modelMatrix from position, rotation and scale
  generateModelMatrix3(scene);

  return true;
}

void Cube::render(Scene &scene) {
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
