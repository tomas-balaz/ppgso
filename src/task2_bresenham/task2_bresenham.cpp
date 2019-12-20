// Task 3 - Implement Bresenham drawing alg.
//        - Draw a star using lines
//        - Make use of std::vector to define the shape
#include <fstream>
#include <iostream>
#include <vector>
#include <cmath>

#include <ppgso/ppgso.h>

// Size of the framebuffer
const unsigned int SIZE = 512;

struct Point {
  int x,y;
};

// Bresenham drawing algorithm
void drawLine(ppgso::Image& framebuffer, Point& from, Point& to) {
  // TODO: Implement Bresenham drawing algorithm

//    int x = from.x;
//    int y = from.y;
//    int error = -(to.x - from.x);
// // int error = from.x - to.x;
//
//    while(x <= to.x) {
//        framebuffer.setPixel(x, y, 255, 255, 255);
//        x += 1;
//        error += 2 * (to.y - from.y);
//        if(error > 0) {
//            y += 1;
//            error -= 2 * (to.x - from.x);
//        }
//    }

    int x1 = from.x;
    int y1 = from.y;
    int x2 = to.x;
    int y2 = to.y;

    int deltaX = std::abs(x1 - x2);
    int deltaY = -1 * std::abs(y1-y2);

    int error = deltaX + deltaY;

}

int main()
{
  // Use ppgso::Image as our framebuffer
  ppgso::Image framebuffer(SIZE, SIZE);

  // TODO: Generate star points
  std::vector<Point> points = {{50, 10}, {200, 20}, {30, 35}};


  // Draw lines
  for(unsigned int i = 0; i < points.size() - 1; i++)
    drawLine(framebuffer, points[i], points[i+1]);

  // Save the result
  std::cout << "Generating task2_bresenham.bmp file ..." << std::endl;
  ppgso::image::saveBMP(framebuffer, "task2_bresenham.bmp");

  std::cout << "Done." << std::endl;
  return EXIT_SUCCESS;
}

