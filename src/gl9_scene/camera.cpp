#include <glm/glm.hpp>

#include "camera.h"
#include "player.h"


Camera::Camera(float fow, float ratio, float near, float far) {
  float fowInRad = (ppgso::PI/180.0f) * fow;

  projectionMatrix = glm::perspective(fowInRad, ratio, near, far);
}

//void Camera::update(Scene &scene, float dt) {
void Camera::update() {
  if (focus_player) {

//    for ( auto& obj : scene.objects ) {
//      auto player1 = dynamic_cast<Player*>(obj.get());
//      if (!player1) continue;
//
//      glm::vec3 cameraPos = player1->position;
//      cameraPos += player1->direction * -20.f;
//      cameraPos.z = -30.f;
//
//      glm::vec3 cameraTarget = player1->position;
//      glm::vec3 cameraDirection = glm::normalize(cameraPos - cameraTarget);
//      glm::vec3 cameraRight = glm::normalize(glm::cross(up, cameraDirection));
//      glm::vec3 cameraUp = glm::cross(cameraDirection, cameraRight);
//
//      viewMatrix = lookAt(cameraPos, cameraDirection, cameraUp);
//
//      break;
//    }
  }
  else {
    viewMatrix = lookAt(position, position - back, up);
  }



}

glm::vec3 Camera::cast(double u, double v) {
  // Create point in Screen coordinates
  glm::vec4 screenPosition{u,v,0.0f,1.0f};

  // Use inverse matrices to get the point in world coordinates
  auto invProjection = glm::inverse(projectionMatrix);
  auto invView = glm::inverse(viewMatrix);

  // Compute position on the camera plane
  auto planePosition = invView * invProjection * screenPosition;
  planePosition /= planePosition.w;

  // Create direction vector
  auto direction = glm::normalize(planePosition - glm::vec4{position,1.0f});
  return glm::vec3{direction};
}
