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
include CMakeFiles/task1_filter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/task1_filter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task1_filter.dir/flags.make

CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.obj: CMakeFiles/task1_filter.dir/flags.make
CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.obj: ../src/task1_filter/task1_filter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\task1_filter.dir\src\task1_filter\task1_filter.cpp.obj -c C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\task1_filter\task1_filter.cpp

CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\task1_filter\task1_filter.cpp > CMakeFiles\task1_filter.dir\src\task1_filter\task1_filter.cpp.i

CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\tomas\Documents\FIIT\5.semester\ppgso\src\task1_filter\task1_filter.cpp -o CMakeFiles\task1_filter.dir\src\task1_filter\task1_filter.cpp.s

# Object files for target task1_filter
task1_filter_OBJECTS = \
"CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.obj"

# External object files for target task1_filter
task1_filter_EXTERNAL_OBJECTS =

task1_filter.exe: CMakeFiles/task1_filter.dir/src/task1_filter/task1_filter.cpp.obj
task1_filter.exe: CMakeFiles/task1_filter.dir/build.make
task1_filter.exe: CMakeFiles/task1_filter.dir/linklibs.rsp
task1_filter.exe: CMakeFiles/task1_filter.dir/objects1.rsp
task1_filter.exe: CMakeFiles/task1_filter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable task1_filter.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\task1_filter.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task1_filter.dir/build: task1_filter.exe

.PHONY : CMakeFiles/task1_filter.dir/build

CMakeFiles/task1_filter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\task1_filter.dir\cmake_clean.cmake
.PHONY : CMakeFiles/task1_filter.dir/clean

CMakeFiles/task1_filter.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug C:\Users\tomas\Documents\FIIT\5.semester\ppgso\cmake-build-debug\CMakeFiles\task1_filter.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task1_filter.dir/depend

