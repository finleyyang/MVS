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
include apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/depend.make
# Include the progress variables for this target.
include apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/progress.make

# Include the compile flags for this target's objects.
include apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/flags.make

apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.o: apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/flags.make
apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.o: /home/finley/CODE/MVS/openMVS/apps/DensifyPointCloud/DensifyPointCloud.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/finley/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.o"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.o -c /home/finley/CODE/MVS/openMVS/apps/DensifyPointCloud/DensifyPointCloud.cpp

apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.i"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/finley/CODE/MVS/openMVS/apps/DensifyPointCloud/DensifyPointCloud.cpp > CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.i

apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.s"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/finley/CODE/MVS/openMVS/apps/DensifyPointCloud/DensifyPointCloud.cpp -o CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.s

# Object files for target DensifyPointCloud
DensifyPointCloud_OBJECTS = \
"CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.o"

# External object files for target DensifyPointCloud
DensifyPointCloud_EXTERNAL_OBJECTS =

bin/DensifyPointCloud: apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DensifyPointCloud.cpp.o
bin/DensifyPointCloud: apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/build.make
bin/DensifyPointCloud: lib/libMVS.a
bin/DensifyPointCloud: lib/libIO.a
bin/DensifyPointCloud: lib/libMVS.a
bin/DensifyPointCloud: lib/libIO.a
bin/DensifyPointCloud: lib/libMath.a
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libCGAL.so.13.0.1
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libmpfr.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libgmp.so
bin/DensifyPointCloud: lib/libCommon.a
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libboost_regex.so
bin/DensifyPointCloud: /usr/local/lib/libopencv_gapi.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_stitching.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_alphamat.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_aruco.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_barcode.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_bgsegm.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_bioinspired.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_ccalib.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_dnn_objdetect.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_dnn_superres.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_dpm.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_face.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_freetype.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_fuzzy.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_hdf.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_hfs.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_img_hash.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_intensity_transform.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_line_descriptor.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_mcc.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_quality.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_rapid.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_reg.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_rgbd.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_saliency.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_stereo.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_structured_light.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_phase_unwrapping.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_superres.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_optflow.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_surface_matching.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_tracking.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_highgui.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_datasets.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_plot.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_text.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_videostab.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_videoio.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_viz.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_wechat_qrcode.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_xfeatures2d.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_ml.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_shape.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_ximgproc.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_video.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_xobjdetect.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_imgcodecs.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_objdetect.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_calib3d.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_dnn.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_features2d.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_flann.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_xphoto.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_photo.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_imgproc.so.4.5.4
bin/DensifyPointCloud: /usr/local/lib/libopencv_core.so.4.5.4
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libpng.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libz.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/DensifyPointCloud: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/DensifyPointCloud: apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/finley/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/DensifyPointCloud"
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DensifyPointCloud.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/build: bin/DensifyPointCloud
.PHONY : apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/build

apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/clean:
	cd /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud && $(CMAKE_COMMAND) -P CMakeFiles/DensifyPointCloud.dir/cmake_clean.cmake
.PHONY : apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/clean

apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/depend:
	cd /home/finley/CODE/MVS/openMVS_build_clion && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/finley/CODE/MVS/openMVS /home/finley/CODE/MVS/openMVS/apps/DensifyPointCloud /home/finley/CODE/MVS/openMVS_build_clion /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud /home/finley/CODE/MVS/openMVS_build_clion/apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/DensifyPointCloud/CMakeFiles/DensifyPointCloud.dir/depend

