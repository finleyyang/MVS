# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /home/finley/Downloads/clion-2021.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/finley/Downloads/clion-2021.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/finley/CODE/MVS/openMVS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/finley/CODE/MVS/openMVS_build_clion

# Include any dependencies generated for this target.
include apps/RefineMesh/CMakeFiles/RefineMesh.dir/depend.make
# Include the progress variables for this target.
include apps/RefineMesh/CMakeFiles/RefineMesh.dir/progress.make

# Include the compile flags for this target's objects.
include apps/RefineMesh/CMakeFiles/RefineMesh.dir/flags.make

apps/RefineMesh/CMakeFiles/RefineMesh.dir/RefineMesh.cpp.o: apps/RefineMesh/CMakeFiles/RefineMesh.dir/flags.make
apps/RefineMesh/CMakeFiles/RefineMesh.dir/RefineMesh.cpp.o: /home/finley/CODE/MVS/openMVS/apps/RefineMesh/RefineMesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/finley/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/RefineMesh/CMakeFiles/RefineMesh.dir/RefineMesh.cpp.o"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RefineMesh.dir/RefineMesh.cpp.o -c /home/finley/CODE/MVS/openMVS/apps/RefineMesh/RefineMesh.cpp

apps/RefineMesh/CMakeFiles/RefineMesh.dir/RefineMesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RefineMesh.dir/RefineMesh.cpp.i"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/finley/CODE/MVS/openMVS/apps/RefineMesh/RefineMesh.cpp > CMakeFiles/RefineMesh.dir/RefineMesh.cpp.i

apps/RefineMesh/CMakeFiles/RefineMesh.dir/RefineMesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RefineMesh.dir/RefineMesh.cpp.s"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/finley/CODE/MVS/openMVS/apps/RefineMesh/RefineMesh.cpp -o CMakeFiles/RefineMesh.dir/RefineMesh.cpp.s

# Object files for target RefineMesh
RefineMesh_OBJECTS = \
"CMakeFiles/RefineMesh.dir/RefineMesh.cpp.o"

# External object files for target RefineMesh
RefineMesh_EXTERNAL_OBJECTS =

bin/RefineMesh: apps/RefineMesh/CMakeFiles/RefineMesh.dir/RefineMesh.cpp.o
bin/RefineMesh: apps/RefineMesh/CMakeFiles/RefineMesh.dir/build.make
bin/RefineMesh: lib/libMVS.a
bin/RefineMesh: lib/libIO.a
bin/RefineMesh: lib/libMVS.a
bin/RefineMesh: lib/libIO.a
bin/RefineMesh: lib/libMath.a
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libCGAL.so.13.0.1
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libmpfr.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libgmp.so
bin/RefineMesh: lib/libCommon.a
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libboost_regex.so
bin/RefineMesh: /usr/local/lib/libopencv_gapi.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_highgui.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_ml.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_objdetect.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_photo.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_stitching.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_video.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_calib3d.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_dnn.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_features2d.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_flann.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_videoio.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_imgcodecs.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_imgproc.so.4.5.4
bin/RefineMesh: /usr/local/lib/libopencv_core.so.4.5.4
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libpng.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libz.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/RefineMesh: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/RefineMesh: apps/RefineMesh/CMakeFiles/RefineMesh.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/finley/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/RefineMesh"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RefineMesh.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/RefineMesh/CMakeFiles/RefineMesh.dir/build: bin/RefineMesh
.PHONY : apps/RefineMesh/CMakeFiles/RefineMesh.dir/build

apps/RefineMesh/CMakeFiles/RefineMesh.dir/clean:
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh && $(CMAKE_COMMAND) -P CMakeFiles/RefineMesh.dir/cmake_clean.cmake
.PHONY : apps/RefineMesh/CMakeFiles/RefineMesh.dir/clean

apps/RefineMesh/CMakeFiles/RefineMesh.dir/depend:
	cd /home/finley/CODE/MVS/openMVS_build_clion && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/finley/CODE/MVS/openMVS /home/finley/CODE/MVS/openMVS/apps/RefineMesh /home/finley/CODE/MVS/openMVS_build_clion /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh /home/finley/CODE/MVS/openMVS_build_clion/apps/RefineMesh/CMakeFiles/RefineMesh.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/RefineMesh/CMakeFiles/RefineMesh.dir/depend

