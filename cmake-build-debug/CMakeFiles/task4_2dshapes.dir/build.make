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
include CMakeFiles/task4_2dshapes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/task4_2dshapes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task4_2dshapes.dir/flags.make

CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.obj: CMakeFiles/task4_2dshapes.dir/flags.make
CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.obj: CMakeFiles/task4_2dshapes.dir/includes_CXX.rsp
CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.obj: ../src/task4_2dshapes/task4_2dshapes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\task4_2dshapes.dir\src\task4_2dshapes\task4_2dshapes.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\task4_2dshapes\task4_2dshapes.cpp

CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\task4_2dshapes\task4_2dshapes.cpp > CMakeFiles\task4_2dshapes.dir\src\task4_2dshapes\task4_2dshapes.cpp.i

CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\task4_2dshapes\task4_2dshapes.cpp -o CMakeFiles\task4_2dshapes.dir\src\task4_2dshapes\task4_2dshapes.cpp.s

# Object files for target task4_2dshapes
task4_2dshapes_OBJECTS = \
"CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.obj"

# External object files for target task4_2dshapes
task4_2dshapes_EXTERNAL_OBJECTS =

task4_2dshapes.exe: CMakeFiles/task4_2dshapes.dir/src/task4_2dshapes/task4_2dshapes.cpp.obj
task4_2dshapes.exe: CMakeFiles/task4_2dshapes.dir/build.make
task4_2dshapes.exe: libppgso.a
task4_2dshapes.exe: libshaders.a
task4_2dshapes.exe: ../dependencies/lib/mingw/libglfw3.a
task4_2dshapes.exe: ../dependencies/lib/mingw/libglew32.a
task4_2dshapes.exe: CMakeFiles/task4_2dshapes.dir/linklibs.rsp
task4_2dshapes.exe: CMakeFiles/task4_2dshapes.dir/objects1.rsp
task4_2dshapes.exe: CMakeFiles/task4_2dshapes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable task4_2dshapes.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\task4_2dshapes.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task4_2dshapes.dir/build: task4_2dshapes.exe

.PHONY : CMakeFiles/task4_2dshapes.dir/build

CMakeFiles/task4_2dshapes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\task4_2dshapes.dir\cmake_clean.cmake
.PHONY : CMakeFiles/task4_2dshapes.dir/clean

CMakeFiles/task4_2dshapes.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles\task4_2dshapes.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task4_2dshapes.dir/depend

