# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/finley/Desktop/course/CODE/MVS/openMVS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion

# Include any dependencies generated for this target.
include apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/depend.make
# Include the progress variables for this target.
include apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/progress.make

# Include the compile flags for this target's objects.
include apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/flags.make

apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.o: apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/flags.make
apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/apps/ReconstructMesh/ReconstructMesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/apps/ReconstructMesh/ReconstructMesh.cpp

apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/apps/ReconstructMesh/ReconstructMesh.cpp > CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.i

apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/apps/ReconstructMesh/ReconstructMesh.cpp -o CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.s

# Object files for target ReconstructMesh
ReconstructMesh_OBJECTS = \
"CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.o"

# External object files for target ReconstructMesh
ReconstructMesh_EXTERNAL_OBJECTS =

bin/ReconstructMesh: apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/ReconstructMesh.cpp.o
bin/ReconstructMesh: apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/build.make
bin/ReconstructMesh: lib/libMVS.a
bin/ReconstructMesh: /usr/local/lib/libomp.dylib
bin/ReconstructMesh: lib/libIO.a
bin/ReconstructMesh: lib/libMVS.a
bin/ReconstructMesh: lib/libIO.a
bin/ReconstructMesh: lib/libMath.a
bin/ReconstructMesh: /usr/local/lib/libgmpxx.dylib
bin/ReconstructMesh: /usr/local/lib/libmpfr.dylib
bin/ReconstructMesh: /usr/local/lib/libgmp.dylib
bin/ReconstructMesh: lib/libCommon.a
bin/ReconstructMesh: /usr/local/lib/libboost_iostreams-mt.dylib
bin/ReconstructMesh: /usr/local/lib/libboost_program_options-mt.dylib
bin/ReconstructMesh: /usr/local/lib/libboost_system-mt.dylib
bin/ReconstructMesh: /usr/local/lib/libboost_serialization-mt.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_gapi.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_stitching.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_alphamat.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_aruco.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_barcode.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_bgsegm.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_bioinspired.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_ccalib.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_dnn_objdetect.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_dnn_superres.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_dpm.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_face.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_freetype.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_fuzzy.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_hfs.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_img_hash.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_intensity_transform.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_line_descriptor.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_mcc.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_quality.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_rapid.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_reg.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_rgbd.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_saliency.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_sfm.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_stereo.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_structured_light.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_phase_unwrapping.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_superres.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_optflow.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_surface_matching.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_tracking.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_highgui.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_datasets.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_plot.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_text.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_videostab.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_videoio.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_viz.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_wechat_qrcode.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_xfeatures2d.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_ml.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_shape.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_ximgproc.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_video.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_xobjdetect.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_imgcodecs.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_objdetect.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_calib3d.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_dnn.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_features2d.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_flann.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_xphoto.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_photo.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_imgproc.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libopencv_core.4.5.4.dylib
bin/ReconstructMesh: /usr/local/lib/libpng.dylib
bin/ReconstructMesh: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.1.sdk/usr/lib/libz.tbd
bin/ReconstructMesh: /usr/local/lib/libjpeg.dylib
bin/ReconstructMesh: /usr/local/lib/libtiff.dylib
bin/ReconstructMesh: apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/ReconstructMesh"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ReconstructMesh.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/build: bin/ReconstructMesh
.PHONY : apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/build

apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/clean:
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh && $(CMAKE_COMMAND) -P CMakeFiles/ReconstructMesh.dir/cmake_clean.cmake
.PHONY : apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/clean

apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/depend:
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/finley/Desktop/course/CODE/MVS/openMVS /Users/finley/Desktop/course/CODE/MVS/openMVS/apps/ReconstructMesh /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/ReconstructMesh/CMakeFiles/ReconstructMesh.dir/depend

