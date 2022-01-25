# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.19)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget Common Math MVS IO InterfaceCOLMAP InterfaceVisualSFM DensifyPointCloud ReconstructMesh RefineMesh TextureMesh Viewer)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# The installation prefix configured by this project.
set(_IMPORT_PREFIX "/usr/local")

# Create imported target Common
add_library(Common STATIC IMPORTED)

set_target_properties(Common PROPERTIES
  INTERFACE_LINK_LIBRARIES "Boost::iostreams;Boost::program_options;Boost::system;Boost::serialization;opencv_calib3d;opencv_core;opencv_dnn;opencv_features2d;opencv_flann;opencv_gapi;opencv_highgui;opencv_imgcodecs;opencv_imgproc;opencv_ml;opencv_objdetect;opencv_photo;opencv_stitching;opencv_video;opencv_videoio;opencv_alphamat;opencv_aruco;opencv_barcode;opencv_bgsegm;opencv_bioinspired;opencv_ccalib;opencv_datasets;opencv_dnn_objdetect;opencv_dnn_superres;opencv_dpm;opencv_face;opencv_freetype;opencv_fuzzy;opencv_hfs;opencv_img_hash;opencv_intensity_transform;opencv_line_descriptor;opencv_mcc;opencv_optflow;opencv_phase_unwrapping;opencv_plot;opencv_quality;opencv_rapid;opencv_reg;opencv_rgbd;opencv_saliency;opencv_sfm;opencv_shape;opencv_stereo;opencv_structured_light;opencv_superres;opencv_surface_matching;opencv_text;opencv_tracking;opencv_videostab;opencv_viz;opencv_wechat_qrcode;opencv_xfeatures2d;opencv_ximgproc;opencv_xobjdetect;opencv_xphoto"
)

# Create imported target Math
add_library(Math STATIC IMPORTED)

set_target_properties(Math PROPERTIES
  INTERFACE_LINK_LIBRARIES "Common"
)

# Create imported target MVS
add_library(MVS STATIC IMPORTED)

set_target_properties(MVS PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:Common>;\$<LINK_ONLY:Math>;\$<LINK_ONLY:IO>;\$<LINK_ONLY:CGAL>;/usr/local/lib/libgmpxx.dylib;/usr/local/lib/libmpfr.dylib;/usr/local/lib/libgmp.dylib;\$<LINK_ONLY:Boost::boost>;/usr/local/lib/libmpfr.dylib;/usr/local/lib/libgmp.dylib"
)

# Create imported target IO
add_library(IO STATIC IMPORTED)

set_target_properties(IO PROPERTIES
  INTERFACE_LINK_LIBRARIES "MVS;Common;/usr/local/lib/libpng.dylib;/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.1.sdk/usr/lib/libz.tbd;/usr/local/lib/libjpeg.dylib;/usr/local/lib/libtiff.dylib"
)

# Create imported target InterfaceCOLMAP
add_executable(InterfaceCOLMAP IMPORTED)

# Create imported target InterfaceVisualSFM
add_executable(InterfaceVisualSFM IMPORTED)

# Create imported target DensifyPointCloud
add_executable(DensifyPointCloud IMPORTED)

# Create imported target ReconstructMesh
add_executable(ReconstructMesh IMPORTED)

# Create imported target RefineMesh
add_executable(RefineMesh IMPORTED)

# Create imported target TextureMesh
add_executable(TextureMesh IMPORTED)

# Create imported target Viewer
add_executable(Viewer IMPORTED)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/OpenMVSTargets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
