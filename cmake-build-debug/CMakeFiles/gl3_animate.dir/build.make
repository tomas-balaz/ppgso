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
include CMakeFiles/gl3_animate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gl3_animate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gl3_animate.dir/flags.make

CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.obj: CMakeFiles/gl3_animate.dir/flags.make
CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.obj: CMakeFiles/gl3_animate.dir/includes_CXX.rsp
CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.obj: ../src/gl3_animate/gl3_animate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gl3_animate.dir\src\gl3_animate\gl3_animate.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl3_animate\gl3_animate.cpp

CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl3_animate\gl3_animate.cpp > CMakeFiles\gl3_animate.dir\src\gl3_animate\gl3_animate.cpp.i

CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\gl3_animate\gl3_animate.cpp -o CMakeFiles\gl3_animate.dir\src\gl3_animate\gl3_animate.cpp.s

# Object files for target gl3_animate
gl3_animate_OBJECTS = \
"CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.obj"

# External object files for target gl3_animate
gl3_animate_EXTERNAL_OBJECTS =

gl3_animate.exe: CMakeFiles/gl3_animate.dir/src/gl3_animate/gl3_animate.cpp.obj
gl3_animate.exe: CMakeFiles/gl3_animate.dir/build.make
gl3_animate.exe: libppgso.a
gl3_animate.exe: libshaders.a
gl3_animate.exe: ../dependencies/lib/mingw/libglfw3.a
gl3_animate.exe: ../dependencies/lib/mingw/libglew32.a
gl3_animate.exe: CMakeFiles/gl3_animate.dir/linklibs.rsp
gl3_animate.exe: CMakeFiles/gl3_animate.dir/objects1.rsp
gl3_animate.exe: CMakeFiles/gl3_animate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable gl3_animate.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gl3_animate.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gl3_animate.dir/build: gl3_animate.exe

.PHONY : CMakeFiles/gl3_animate.dir/build

CMakeFiles/gl3_animate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\gl3_animate.dir\cmake_clean.cmake
.PHONY : CMakeFiles/gl3_animate.dir/clean

CMakeFiles/gl3_animate.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles\gl3_animate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gl3_animate.dir/depend
