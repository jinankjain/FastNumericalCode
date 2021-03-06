#      _________   _____________________  ____  ______
#     / ____/   | / ___/_  __/ ____/ __ \/ __ \/ ____/
#    / /_  / /| | \__ \ / / / /   / / / / / / / __/
#   / __/ / ___ |___/ // / / /___/ /_/ / /_/ / /___
#  /_/   /_/  |_/____//_/  \____/\____/_____/_____/
#
#  http://www.inf.ethz.ch/personal/markusp/teaching/
#  How to Write Fast Numerical Code 263-2300 - ETH Zurich
#  Copyright (C) 2017 Alen Stojanov (astojanov@inf.ethz.ch)
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program. If not, see http://www.gnu.org/licenses/.

cmake_minimum_required(VERSION 3.0.2)
set(CMAKE_VERBOSE_MAKEFILE ON)
project(IntelPCM)
include(CMakeLibs.cmake)

# ================================================================================
# Reset the C/C++ flags, and take full control
# ================================================================================
set(CMAKE_C_FLAGS           "")
set(CMAKE_CXX_FLAGS         "")
set(CMAKE_C_FLAGS_RELEASE   "")
set(CMAKE_CXX_FLAGS_RELEASE "")
set(CMAKE_C_FLAGS_DEBUG     "")
set(CMAKE_CXX_FLAGS_DEBUG   "")

# ================================================================================
# Build the executable
# ================================================================================

# Add the include directories
include_directories(include)


# ================================================================================
# C++ Global Flags
# ================================================================================
if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")

    # clang - C++ flags
    set(CMAKE_CXX_FLAGS "-O3 -std=c++11")

elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")

    # GNU GCC - C++ flags
    set(CMAKE_CXX_FLAGS "-O3 -std=c++11")

elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")

    # Intel ICC - C++ flags
    set(CMAKE_CXX_FLAGS "-O3 -std=c++11")

elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")

    # Microsoft Visual Studio - C++ flags
    set(CMAKE_CXX_FLAGS "-O2 -std=c++11")

endif()

# ================================================================================
# C Global Flags
# ================================================================================

if (CMAKE_C_COMPILER_ID MATCHES "Clang")

    # clang - CC flags
    set(CMAKE_C_FLAGS "-O3 -fno-tree-vectorize -mno-sse4 -mno-sse3 -ffast-math -funsafe-math-optimizations")

elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")

    # GNU GCC - CC flags
    set(CMAKE_C_FLAGS "-O3 -fno-tree-vectorize -mno-sse4 -mno-sse3 -ffast-math -funsafe-math-optimizations")

elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL "Intel")

    # Intel ICC - CC flags
    set(CMAKE_C_FLAGS "-O3 -xHost -no-vec")

elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL "MSVC")

    # Microsoft Visual Studio - CC flags
    set(CMAKE_C_FLAGS "-O2 -std=c++11")

endif()


set(SOURCE_FILES
    src/microbenchmark.h
    src/microbenchmark.c
    src/main.c
    src/main.h
)

# Deine the binary executable
add_executable(IntelPCM ${SOURCE_FILES})
# Put together all dependencies
target_link_libraries(IntelPCM pcm)
if (DEFINED PCM_DEPENDENCIES)
    add_dependencies(IntelPCM ${PCM_DEPENDENCIES})
endif(DEFINED PCM_DEPENDENCIES)





