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
include lib/CMakeFiles/pcm.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/pcm.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/pcm.dir/flags.make

lib/CMakeFiles/pcm.dir/perf/perf.cpp.o: lib/CMakeFiles/pcm.dir/flags.make
lib/CMakeFiles/pcm.dir/perf/perf.cpp.o: lib/perf/perf.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/pcm.dir/perf/perf.cpp.o"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcm.dir/perf/perf.cpp.o -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/perf/perf.cpp

lib/CMakeFiles/pcm.dir/perf/perf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcm.dir/perf/perf.cpp.i"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/perf/perf.cpp > CMakeFiles/pcm.dir/perf/perf.cpp.i

lib/CMakeFiles/pcm.dir/perf/perf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcm.dir/perf/perf.cpp.s"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/perf/perf.cpp -o CMakeFiles/pcm.dir/perf/perf.cpp.s

lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.requires:

.PHONY : lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.requires

lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.provides: lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pcm.dir/build.make lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.provides

lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.provides.build: lib/CMakeFiles/pcm.dir/perf/perf.cpp.o


lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o: lib/CMakeFiles/pcm.dir/flags.make
lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o: lib/pcm/cpucounters.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/cpucounters.cpp

lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcm.dir/pcm/cpucounters.cpp.i"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/cpucounters.cpp > CMakeFiles/pcm.dir/pcm/cpucounters.cpp.i

lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcm.dir/pcm/cpucounters.cpp.s"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/cpucounters.cpp -o CMakeFiles/pcm.dir/pcm/cpucounters.cpp.s

lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.requires:

.PHONY : lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.requires

lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.provides: lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pcm.dir/build.make lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.provides

lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.provides.build: lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o


lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o: lib/CMakeFiles/pcm.dir/flags.make
lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o: lib/pcm/msr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcm.dir/pcm/msr.cpp.o -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/msr.cpp

lib/CMakeFiles/pcm.dir/pcm/msr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcm.dir/pcm/msr.cpp.i"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/msr.cpp > CMakeFiles/pcm.dir/pcm/msr.cpp.i

lib/CMakeFiles/pcm.dir/pcm/msr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcm.dir/pcm/msr.cpp.s"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/msr.cpp -o CMakeFiles/pcm.dir/pcm/msr.cpp.s

lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.requires:

.PHONY : lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.requires

lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.provides: lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pcm.dir/build.make lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.provides

lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.provides.build: lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o


lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o: lib/CMakeFiles/pcm.dir/flags.make
lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o: lib/pcm/client_bw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcm.dir/pcm/client_bw.cpp.o -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/client_bw.cpp

lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcm.dir/pcm/client_bw.cpp.i"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/client_bw.cpp > CMakeFiles/pcm.dir/pcm/client_bw.cpp.i

lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcm.dir/pcm/client_bw.cpp.s"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/client_bw.cpp -o CMakeFiles/pcm.dir/pcm/client_bw.cpp.s

lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.requires:

.PHONY : lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.requires

lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.provides: lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pcm.dir/build.make lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.provides

lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.provides.build: lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o


lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o: lib/CMakeFiles/pcm.dir/flags.make
lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o: lib/pcm/pci.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcm.dir/pcm/pci.cpp.o -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/pci.cpp

lib/CMakeFiles/pcm.dir/pcm/pci.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcm.dir/pcm/pci.cpp.i"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/pci.cpp > CMakeFiles/pcm.dir/pcm/pci.cpp.i

lib/CMakeFiles/pcm.dir/pcm/pci.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcm.dir/pcm/pci.cpp.s"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/pci.cpp -o CMakeFiles/pcm.dir/pcm/pci.cpp.s

lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.requires:

.PHONY : lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.requires

lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.provides: lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pcm.dir/build.make lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.provides

lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.provides.build: lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o


lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o: lib/CMakeFiles/pcm.dir/flags.make
lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o: lib/pcm/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcm.dir/pcm/utils.cpp.o -c /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/utils.cpp

lib/CMakeFiles/pcm.dir/pcm/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcm.dir/pcm/utils.cpp.i"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/utils.cpp > CMakeFiles/pcm.dir/pcm/utils.cpp.i

lib/CMakeFiles/pcm.dir/pcm/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcm.dir/pcm/utils.cpp.s"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/pcm/utils.cpp -o CMakeFiles/pcm.dir/pcm/utils.cpp.s

lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.requires:

.PHONY : lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.requires

lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.provides: lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pcm.dir/build.make lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.provides

lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.provides.build: lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o


# Object files for target pcm
pcm_OBJECTS = \
"CMakeFiles/pcm.dir/perf/perf.cpp.o" \
"CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o" \
"CMakeFiles/pcm.dir/pcm/msr.cpp.o" \
"CMakeFiles/pcm.dir/pcm/client_bw.cpp.o" \
"CMakeFiles/pcm.dir/pcm/pci.cpp.o" \
"CMakeFiles/pcm.dir/pcm/utils.cpp.o"

# External object files for target pcm
pcm_EXTERNAL_OBJECTS =

bin/libpcm.a: lib/CMakeFiles/pcm.dir/perf/perf.cpp.o
bin/libpcm.a: lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o
bin/libpcm.a: lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o
bin/libpcm.a: lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o
bin/libpcm.a: lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o
bin/libpcm.a: lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o
bin/libpcm.a: lib/CMakeFiles/pcm.dir/build.make
bin/libpcm.a: lib/CMakeFiles/pcm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library ../bin/libpcm.a"
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && $(CMAKE_COMMAND) -P CMakeFiles/pcm.dir/cmake_clean_target.cmake
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/pcm.dir/build: bin/libpcm.a

.PHONY : lib/CMakeFiles/pcm.dir/build

lib/CMakeFiles/pcm.dir/requires: lib/CMakeFiles/pcm.dir/perf/perf.cpp.o.requires
lib/CMakeFiles/pcm.dir/requires: lib/CMakeFiles/pcm.dir/pcm/cpucounters.cpp.o.requires
lib/CMakeFiles/pcm.dir/requires: lib/CMakeFiles/pcm.dir/pcm/msr.cpp.o.requires
lib/CMakeFiles/pcm.dir/requires: lib/CMakeFiles/pcm.dir/pcm/client_bw.cpp.o.requires
lib/CMakeFiles/pcm.dir/requires: lib/CMakeFiles/pcm.dir/pcm/pci.cpp.o.requires
lib/CMakeFiles/pcm.dir/requires: lib/CMakeFiles/pcm.dir/pcm/utils.cpp.o.requires

.PHONY : lib/CMakeFiles/pcm.dir/requires

lib/CMakeFiles/pcm.dir/clean:
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib && $(CMAKE_COMMAND) -P CMakeFiles/pcm.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/pcm.dir/clean

lib/CMakeFiles/pcm.dir/depend:
	cd /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib /home/jinankjain/ETHZ/HWFNC/FastNumericalCode/Assignment2/microbenchmark/lib/CMakeFiles/pcm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/pcm.dir/depend

