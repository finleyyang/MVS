# - Configure file for the OpenMVS package
# It defines the following variables
#  OpenMVS_INCLUDE_DIRS - include directories for OpenMVS
#  OpenMVS_LIBRARIES    - libraries to link against
#  OpenMVS_BINARIES     - the binaries
 
# Compute paths
get_filename_component(OpenMVS_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(OpenMVS_INCLUDE_DIRS "/Users/finley/Desktop/course/CODE/MVS/openMVS;/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion")
 
# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET MVS AND NOT OpenMVS_BINARY_DIR)
	include("${OpenMVS_CMAKE_DIR}/OpenMVSTargets.cmake")
endif()
 
# These are IMPORTED targets created by OpenMVSTargets.cmake
set(OpenMVS_LIBRARIES MVS)
set(OpenMVS_BINARIES InterfaceVisualSFM DensifyPointCloud ReconstructMesh RefineMesh TextureMesh)
