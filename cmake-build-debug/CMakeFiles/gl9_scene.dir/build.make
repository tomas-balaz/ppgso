# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\tomas\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\192.6603.37\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\tomas\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\192.6603.37\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\tomas\Documents\FIIT\5.semester\ppgso

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/gl9_scene.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gl9_scene.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gl9_scene.dir/flags.make

CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.obj: ../src/gl9_scene/gl9_scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\gl9_scene.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\gl9_scene.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\gl9_scene.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\gl9_scene.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\gl9_scene.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\gl9_scene.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.obj: ../src/gl9_scene/object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\object.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\object.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\object.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\object.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\object.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\object.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.obj: ../src/gl9_scene/scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\scene.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\scene.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\scene.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\scene.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\scene.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\scene.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.obj: ../src/gl9_scene/camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\camera.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\camera.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\camera.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\camera.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\camera.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\camera.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.obj: ../src/gl9_scene/asteroid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\asteroid.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\asteroid.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\asteroid.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\asteroid.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\asteroid.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\asteroid.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.obj: ../src/gl9_scene/generator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\generator.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\generator.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\generator.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\generator.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\generator.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\generator.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.obj: ../src/gl9_scene/player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\player.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\player.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\player.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\player.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\player.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\player.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.obj: ../src/gl9_scene/projectile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\projectile.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\projectile.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\projectile.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\projectile.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\projectile.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\projectile.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.obj: ../src/gl9_scene/explosion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\explosion.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\explosion.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\explosion.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\explosion.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\explosion.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\explosion.cpp.s

CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.obj: CMakeFiles/gl9_scene.dir/flags.make
CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.obj: CMakeFiles/gl9_scene.dir/includes_CXX.rsp
CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.obj: ../src/gl9_scene/space.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl9_scene.dir\src\gl9_scene\space.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\space.cpp

CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\space.cpp > CMakeFiles\gl9_scene.dir\src\gl9_scene\space.cpp.i

CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl9_scene\space.cpp -o CMakeFiles\gl9_scene.dir\src\gl9_scene\space.cpp.s

# Object files for target gl9_scene
gl9_scene_OBJECTS = \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.obj" \
"CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.obj"

# External object files for target gl9_scene
gl9_scene_EXTERNAL_OBJECTS =

gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/gl9_scene.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/object.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/scene.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/camera.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/asteroid.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/generator.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/player.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/projectile.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/explosion.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/src/gl9_scene/space.cpp.obj
gl9_scene.exe: CMakeFiles/gl9_scene.dir/build.make
gl9_scene.exe: libppgso.a
gl9_scene.exe: libshaders.a
gl9_scene.exe: ../dependencies/lib/mingw/libglfw3.a
gl9_scene.exe: ../dependencies/lib/mingw/libglew32.a
gl9_scene.exe: CMakeFiles/gl9_scene.dir/linklibs.rsp
gl9_scene.exe: CMakeFiles/gl9_scene.dir/objects1.rsp
gl9_scene.exe: CMakeFiles/gl9_scene.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable gl9_scene.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gl9_scene.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gl9_scene.dir/build: gl9_scene.exe

.PHONY : CMakeFiles/gl9_scene.dir/build

CMakeFiles/gl9_scene.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\gl9_scene.dir\cmake_clean.cmake
.PHONY : CMakeFiles/gl9_scene.dir/clean

CMakeFiles/gl9_scene.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles\gl9_scene.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gl9_scene.dir/depend

