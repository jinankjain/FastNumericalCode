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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark

# Include any dependencies generated for this target.
include CMakeFiles/IntelPCM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IntelPCM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IntelPCM.dir/flags.make

CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o: CMakeFiles/IntelPCM.dir/flags.make
CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o: src/microbenchmark.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o   -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/src/microbenchmark.c

CMakeFiles/IntelPCM.dir/src/microbenchmark.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IntelPCM.dir/src/microbenchmark.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/src/microbenchmark.c > CMakeFiles/IntelPCM.dir/src/microbenchmark.c.i

CMakeFiles/IntelPCM.dir/src/microbenchmark.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IntelPCM.dir/src/microbenchmark.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/src/microbenchmark.c -o CMakeFiles/IntelPCM.dir/src/microbenchmark.c.s

CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.requires:

.PHONY : CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.requires

CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.provides: CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.requires
	$(MAKE) -f CMakeFiles/IntelPCM.dir/build.make CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.provides.build
.PHONY : CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.provides

CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.provides.build: CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o


CMakeFiles/IntelPCM.dir/src/main.c.o: CMakeFiles/IntelPCM.dir/flags.make
CMakeFiles/IntelPCM.dir/src/main.c.o: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/IntelPCM.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/IntelPCM.dir/src/main.c.o   -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/src/main.c

CMakeFiles/IntelPCM.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IntelPCM.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/src/main.c > CMakeFiles/IntelPCM.dir/src/main.c.i

CMakeFiles/IntelPCM.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IntelPCM.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/src/main.c -o CMakeFiles/IntelPCM.dir/src/main.c.s

CMakeFiles/IntelPCM.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/IntelPCM.dir/src/main.c.o.requires

CMakeFiles/IntelPCM.dir/src/main.c.o.provides: CMakeFiles/IntelPCM.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/IntelPCM.dir/build.make CMakeFiles/IntelPCM.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/IntelPCM.dir/src/main.c.o.provides

CMakeFiles/IntelPCM.dir/src/main.c.o.provides.build: CMakeFiles/IntelPCM.dir/src/main.c.o


# Object files for target IntelPCM
IntelPCM_OBJECTS = \
"CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o" \
"CMakeFiles/IntelPCM.dir/src/main.c.o"

# External object files for target IntelPCM
IntelPCM_EXTERNAL_OBJECTS =

bin/IntelPCM: CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o
bin/IntelPCM: CMakeFiles/IntelPCM.dir/src/main.c.o
bin/IntelPCM: CMakeFiles/IntelPCM.dir/build.make
bin/IntelPCM: bin/libpcm.a
bin/IntelPCM: CMakeFiles/IntelPCM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bin/IntelPCM"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IntelPCM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IntelPCM.dir/build: bin/IntelPCM

.PHONY : CMakeFiles/IntelPCM.dir/build

CMakeFiles/IntelPCM.dir/requires: CMakeFiles/IntelPCM.dir/src/microbenchmark.c.o.requires
CMakeFiles/IntelPCM.dir/requires: CMakeFiles/IntelPCM.dir/src/main.c.o.requires

.PHONY : CMakeFiles/IntelPCM.dir/requires

CMakeFiles/IntelPCM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IntelPCM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IntelPCM.dir/clean

CMakeFiles/IntelPCM.dir/depend:
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles/IntelPCM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IntelPCM.dir/depend

