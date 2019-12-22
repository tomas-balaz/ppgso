// Example gl_scene
// - Introduces the concept of a dynamic scene of objects
// - Uses abstract object interface for Update and Render steps
// - Creates a simple game scene with Player, Asteroid and Space objects
// - Contains a generator object that does not render but adds Asteroids to the scene
// - Some objects use shared resources and all object deallocations are handled automatically
// - Controls: LEFT, RIGHT, "R" to reset, SPACE to fire

#include <iostream>
#include <map>
#include <list>

#include <ppgso/ppgso.h>

#include "camera.h"
#include "scene.h"
#include "generator.h"
#include "player.h"
#include "space.h"
#include "player2.h"
#include "cycle_shadow.h"

const unsigned int SIZE = 900;

/*!
 * Custom windows for our simple game
 */
class SceneWindow : public ppgso::Window {
private:
  Scene scene;
  bool animate = true;

  /*!
   * Reset and initialize the game scene
   * Creating unique smart pointers to objects that are stored in the scene object list
   */
  void initScene() {
    scene.objects.clear();

    // Create a camera
    auto camera = std::make_unique<Camera>(60.0f, 1.0f, 0.1f, 100.0f);
    camera->position.z = -65.0f;
//    camera->position.y = -5.0f;
    scene.camera = move(camera);

    // Add space background
    scene.objects.push_back(std::make_unique<Space>());

    // Add generator to scene
    auto generator = std::make_unique<Generator>();
    generator->position.y = 10.0f;
    scene.objects.push_back(move(generator));

    // Add player to the scene
    auto player = std::make_unique<Player>();
//    player->position.y = -6;
    player->position.y = 0;


    auto player_shadow = std::make_unique<CycleShadow>();
//    player->position.y = -6;
    player_shadow->position = player->position;
    player_shadow->position.z -= 2.f;
    scene.objects.push_back(move(player_shadow));

    scene.objects.push_back(move(player));

    // Add player to the scene
    auto player2 = std::make_unique<Player2>();
//    player2->position.y = -6;
    player2->position.y = 0;
    scene.objects.push_back(move(player2));
  }



public:
  /*!
   * Construct custom game window
   */
  SceneWindow() : Window{"TRON", SIZE + 200, SIZE} {
    //hideCursor();
    glfwSetInputMode(window, GLFW_STICKY_KEYS, 1);

    // Initialize OpenGL state
    // Enable Z-buffer
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);

    // Enable polygon culling
    glEnable(GL_CULL_FACE);
    glFrontFace(GL_CCW);
    glCullFace(GL_BACK);

    initScene();
  }

  /*!
   * Handles pressed key when the window is focused
   * @param key Key code of the key being pressed/released
   * @param scanCode Scan code of the key being pressed/released
   * @param action Action indicating the key state change
   * @param mods Additional modifiers to consider
   */
  void onKey(int key, int scanCode, int action, int mods) override {
    scene.keyboard[key] = action;

    // Reset
    if (key == GLFW_KEY_R && action == GLFW_PRESS) {
      initScene();
    }

    // Pause
    if (key == GLFW_KEY_P && action == GLFW_PRESS) {
      animate = !animate;
    }

    if (scene.keyboard[GLFW_KEY_C]) {
      scene.camera->position = glm::vec3(0, 0, -65.f);
      scene.camera->back = glm::vec3(0, 0, -1.f);
    }
    if (scene.keyboard[GLFW_KEY_X]) {
      scene.camera->position = glm::vec3(-16.4f, -30.f, -65.f);
      scene.camera->back = glm::vec3(-.168f, -.336f, -1.f);
    }
    if (scene.keyboard[GLFW_KEY_Z]) {
      scene.camera->position = glm::vec3(-22.8f, -30.f, -65.f);
      scene.camera->back = glm::vec3(-.168f, -.336f, -.72699f);
    }
//
//    if (scene.keyboard[GLFW_KEY_K]) {
//      glm::vec3 cameraPos = glm::vec3(0.0f, 0.0f, 3.0f);
//      glm::vec3 cameraTarget = glm::vec3(0.0f, 0.0f, 0.0f);
//      glm::vec3 cameraDirection = glm::normalize(cameraPos - cameraTarget);
//      glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f);
//      glm::vec3 cameraRight = glm::normalize(glm::cross(up, cameraDirection));
//      glm::vec3 cameraUp = glm::cross(cameraDirection, cameraRight);
//
//      glm::mat4 view;
//      view = glm::lookAt(cameraPos,
//                         cameraTarget,
//                         up);
//
//    }
//    if (scene.keyboard[GLFW_KEY_L]) {
//      scene.camera->focus_player = true;
//    }

    if (scene.keyboard[GLFW_KEY_I]) {
      scene.camera->position.y += .4f;
    }
    if (scene.keyboard[GLFW_KEY_J]) {
      scene.camera->position.x += .4f;
    }
    if (scene.keyboard[GLFW_KEY_K]) {
      scene.camera->position.y -= .4f;
    }
    if (scene.keyboard[GLFW_KEY_L]) {
      scene.camera->position.x -= .4f;
    }
    if (scene.keyboard[GLFW_KEY_M]) {
      scene.camera->position.z += .4f;
    }
    if (scene.keyboard[GLFW_KEY_N]) {
      scene.camera->position.z -= .4f;
    }
    if (scene.keyboard[GLFW_KEY_LEFT_BRACKET]) {
      scene.camera->back.y -= .007f;
    }
    if (scene.keyboard[GLFW_KEY_APOSTROPHE]) {
      scene.camera->back.y += .007f;
    }
    if (scene.keyboard[GLFW_KEY_SEMICOLON]) {
      scene.camera->back.x += .007f;
    }
    if (scene.keyboard[GLFW_KEY_BACKSLASH]) {
      scene.camera->back.x -= .007f;
    }
    if (scene.keyboard[GLFW_KEY_SLASH]) {
      scene.camera->back.z += .007f;
    }
    if (scene.keyboard[GLFW_KEY_PERIOD]) {
      scene.camera->back.z -= .007f;
    }
//    std::cout << "pos" << scene.camera->position.x << "|" << scene.camera->position.y << "|" << scene.camera->position.z << " back" << scene.camera->back.x << "|" << scene.camera->back.y << "|" << scene.camera->back.z << "\n";

  }

  /*!
   * Handle cursor position changes
   * @param cursorX Mouse horizontal position in window coordinates
   * @param cursorY Mouse vertical position in window coordinates
   */
  void onCursorPos(double cursorX, double cursorY) override {
    scene.cursor.x = cursorX;
    scene.cursor.y = cursorY;
  }

  /*!
   * Handle cursor buttons
   * @param button Mouse button being manipulated
   * @param action Mouse bu
   * @param mods
   */
  void onMouseButton(int button, int action, int mods) override {
    if(button == GLFW_MOUSE_BUTTON_LEFT) {
      scene.cursor.left = action == GLFW_PRESS;

      if (scene.cursor.left) {
        // Convert pixel coordinates to Screen coordinates
        double u = (scene.cursor.x / width - 0.5f) * 2.0f;
        double v = - (scene.cursor.y / height - 0.5f) * 2.0f;

        // Get mouse pick vector in world coordinates
        auto direction = scene.camera->cast(u, v);
        auto position = scene.camera->position;

        // Get all objects in scene intersected by ray
        auto picked = scene.intersect(position, direction);

        // Go through all objects that have been picked
        for (auto &obj: picked) {
          // Pass on the click event
          obj->onClick(scene);
        }
      }
    }
    if(button == GLFW_MOUSE_BUTTON_RIGHT) {
      scene.cursor.right = action == GLFW_PRESS;
    }
  }

  /*!
   * Window update implementation that will be called automatically from pollEvents
   */
  void onIdle() override {
    // Track time
    static auto time = (float) glfwGetTime();

    // Compute time delta
    float dt = animate ? (float) glfwGetTime() - time : 0;

    time = (float) glfwGetTime();

    // Set gray background
    glClearColor(.5f, .5f, .5f, 0);
    // Clear depth and color buffers
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Update and render all objects
    scene.update(dt);
    scene.render();
  }
};

int main() {
  // Initialize our window
  SceneWindow window;

  // Main execution loop
  while (window.pollEvents()) {}

  return EXIT_SUCCESS;
}
