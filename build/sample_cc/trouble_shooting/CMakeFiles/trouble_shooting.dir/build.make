# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kai/dev/yankailab/Livox-SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kai/dev/yankailab/Livox-SDK/build

# Include any dependencies generated for this target.
include sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/compiler_depend.make

# Include the progress variables for this target.
include sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/progress.make

# Include the compile flags for this target's objects.
include sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/flags.make

sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.o: sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/flags.make
sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.o: /home/kai/dev/yankailab/Livox-SDK/sample_cc/trouble_shooting/main.cpp
sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.o: sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kai/dev/yankailab/Livox-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.o"
	cd /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.o -MF CMakeFiles/trouble_shooting.dir/main.cpp.o.d -o CMakeFiles/trouble_shooting.dir/main.cpp.o -c /home/kai/dev/yankailab/Livox-SDK/sample_cc/trouble_shooting/main.cpp

sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trouble_shooting.dir/main.cpp.i"
	cd /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kai/dev/yankailab/Livox-SDK/sample_cc/trouble_shooting/main.cpp > CMakeFiles/trouble_shooting.dir/main.cpp.i

sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trouble_shooting.dir/main.cpp.s"
	cd /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kai/dev/yankailab/Livox-SDK/sample_cc/trouble_shooting/main.cpp -o CMakeFiles/trouble_shooting.dir/main.cpp.s

# Object files for target trouble_shooting
trouble_shooting_OBJECTS = \
"CMakeFiles/trouble_shooting.dir/main.cpp.o"

# External object files for target trouble_shooting
trouble_shooting_EXTERNAL_OBJECTS =

sample_cc/trouble_shooting/trouble_shooting: sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/main.cpp.o
sample_cc/trouble_shooting/trouble_shooting: sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/build.make
sample_cc/trouble_shooting/trouble_shooting: sdk_core/liblivox_sdk_static.a
sample_cc/trouble_shooting/trouble_shooting: sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kai/dev/yankailab/Livox-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable trouble_shooting"
	cd /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trouble_shooting.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/build: sample_cc/trouble_shooting/trouble_shooting
.PHONY : sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/build

sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/clean:
	cd /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting && $(CMAKE_COMMAND) -P CMakeFiles/trouble_shooting.dir/cmake_clean.cmake
.PHONY : sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/clean

sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/depend:
	cd /home/kai/dev/yankailab/Livox-SDK/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kai/dev/yankailab/Livox-SDK /home/kai/dev/yankailab/Livox-SDK/sample_cc/trouble_shooting /home/kai/dev/yankailab/Livox-SDK/build /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting /home/kai/dev/yankailab/Livox-SDK/build/sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sample_cc/trouble_shooting/CMakeFiles/trouble_shooting.dir/depend

