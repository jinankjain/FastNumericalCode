# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build

# Include any dependencies generated for this target.
include CMakeFiles/comp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/comp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/comp.dir/flags.make

CMakeFiles/comp.dir/src/main.c.o: CMakeFiles/comp.dir/flags.make
CMakeFiles/comp.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/comp.dir/src/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/comp.dir/src/main.c.o   -c /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/src/main.c

CMakeFiles/comp.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/comp.dir/src/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/src/main.c > CMakeFiles/comp.dir/src/main.c.i

CMakeFiles/comp.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/comp.dir/src/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/src/main.c -o CMakeFiles/comp.dir/src/main.c.s

CMakeFiles/comp.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/comp.dir/src/main.c.o.requires

CMakeFiles/comp.dir/src/main.c.o.provides: CMakeFiles/comp.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/comp.dir/build.make CMakeFiles/comp.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/comp.dir/src/main.c.o.provides

CMakeFiles/comp.dir/src/main.c.o.provides.build: CMakeFiles/comp.dir/src/main.c.o


# Object files for target comp
comp_OBJECTS = \
"CMakeFiles/comp.dir/src/main.c.o"

# External object files for target comp
comp_EXTERNAL_OBJECTS =

../bin/comp: CMakeFiles/comp.dir/src/main.c.o
../bin/comp: CMakeFiles/comp.dir/build.make
../bin/comp: ../bin/libpcm.a
../bin/comp: CMakeFiles/comp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/comp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/comp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/comp.dir/build: ../bin/comp

.PHONY : CMakeFiles/comp.dir/build

CMakeFiles/comp.dir/requires: CMakeFiles/comp.dir/src/main.c.o.requires

.PHONY : CMakeFiles/comp.dir/requires

CMakeFiles/comp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/comp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/comp.dir/clean

CMakeFiles/comp.dir/depend:
	cd /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build /Users/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment3/power/build/CMakeFiles/comp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/comp.dir/depend

