#define GLM_ENABLE_EXPERIMENTAL
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/euler_angles.hpp>
#include <glm/gtx/transform.hpp>

#include "object.h"

void Object::generateModelMatrix() {
  modelMatrix =
          glm::translate(glm::mat4(1.0f), position)
          * glm::orientate4(rotation)
          * glm::scale(glm::mat4(1.0f), scale);
}

void Object::generateModelMatrix2(Scene &scene) {
  modelMatrix =
          glm::translate(glm::mat4(1.0f), position) *
          glm::orientate4(rotation) *
          glm::translate(glm::mat4(1.0f), {1.4,1.4,1.4}) *
          glm::scale(glm::mat4(1.0f),scale);
}

void Object::generateModelMatrix3(Scene &scene) {
  modelMatrix =
          glm::translate(glm::mat4(1.0f), position) *
          glm::orientate4(rotation) *
          glm::translate(glm::mat4(1.0f), {1.6,1.6,1.6}) *
          glm::scale(glm::mat4(1.0f),scale);
}