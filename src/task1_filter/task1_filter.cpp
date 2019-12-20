// Task 1 - Load a 512x512 image lena.raw
//        - Apply specified per-pixel transformation to each pixel
//        - Save as result.raw

#include <fstream>
#include <iostream>
#include <_bsd_types.h>

// Size of the framebuffer
const unsigned int SIZE = 512;

// A simple RGB struct will represent a pixel in the framebuffer
struct Pixel {
  // TODO: Define correct data type for r, g, b channel
  unsigned char red;
  unsigned char green;
  unsigned char blue;
};

int main()
{
  // Initialize a framebuffer
  auto framebuffer = new Pixel[SIZE][SIZE];

  // TODO: Open file lena.raw (this is 512x512 RAW RGB format)
  std::ifstream lenaPicture;
  lenaPicture.open("lena.raw", ::std::ios::binary | ::std::ios::out);

  // TODO: Read data to framebuffer and close the file
  lenaPicture.read((char*)framebuffer, sizeof(Pixel)*SIZE*SIZE);
  lenaPicture.close();

  unsigned char grayScaleValue = 0;
  // Traverse the framebuffer
  for (unsigned int y = 0; y < SIZE; y++) {
    for (unsigned int x = 0; x < SIZE; x++) {
      // TODO: Apply pixel operation
      grayScaleValue = (framebuffer[x][y].red + framebuffer[x][y].green + framebuffer[x][y].blue) / 3;
      framebuffer[x][y].red = grayScaleValue;
      framebuffer[x][y].green = grayScaleValue;
      framebuffer[x][y].blue = grayScaleValue;
    }
  }

  // TODO: Open file result.raw
  std::cout << "Generating result.raw file ..." << std::endl;

  std::ofstream result;
  result.open("result.raw", ::std::ios::binary | ::std::ios::out);

  // TODO: Write the framebuffer to the file and close it
  result.write((char*)framebuffer, sizeof(Pixel)*SIZE*SIZE);
  result.close();

  std::cout << "Done." << std::endl;
  delete[] framebuffer;
  return EXIT_SUCCESS;
}
