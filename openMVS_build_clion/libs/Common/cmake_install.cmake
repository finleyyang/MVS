# Install script for directory: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/OpenMVS/libCommon.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/lib/libCommon.a")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libCommon.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libCommon.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libCommon.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/OpenMVS/Common/AABB.h;/usr/local/include/OpenMVS/Common/AABB.inl;/usr/local/include/OpenMVS/Common/AutoEstimator.h;/usr/local/include/OpenMVS/Common/AutoPtr.h;/usr/local/include/OpenMVS/Common/CUDA.h;/usr/local/include/OpenMVS/Common/Common.h;/usr/local/include/OpenMVS/Common/Config.h;/usr/local/include/OpenMVS/Common/ConfigTable.h;/usr/local/include/OpenMVS/Common/CriticalSection.h;/usr/local/include/OpenMVS/Common/EventQueue.h;/usr/local/include/OpenMVS/Common/FastDelegate.h;/usr/local/include/OpenMVS/Common/FastDelegateBind.h;/usr/local/include/OpenMVS/Common/FastDelegateCPP11.h;/usr/local/include/OpenMVS/Common/File.h;/usr/local/include/OpenMVS/Common/Filters.h;/usr/local/include/OpenMVS/Common/HTMLDoc.h;/usr/local/include/OpenMVS/Common/HalfFloat.h;/usr/local/include/OpenMVS/Common/Hash.h;/usr/local/include/OpenMVS/Common/LinkLib.h;/usr/local/include/OpenMVS/Common/List.h;/usr/local/include/OpenMVS/Common/Log.h;/usr/local/include/OpenMVS/Common/MemFile.h;/usr/local/include/OpenMVS/Common/OBB.h;/usr/local/include/OpenMVS/Common/OBB.inl;/usr/local/include/OpenMVS/Common/Octree.h;/usr/local/include/OpenMVS/Common/Octree.inl;/usr/local/include/OpenMVS/Common/Plane.h;/usr/local/include/OpenMVS/Common/Plane.inl;/usr/local/include/OpenMVS/Common/Queue.h;/usr/local/include/OpenMVS/Common/Random.h;/usr/local/include/OpenMVS/Common/Ray.h;/usr/local/include/OpenMVS/Common/Ray.inl;/usr/local/include/OpenMVS/Common/Rotation.h;/usr/local/include/OpenMVS/Common/Rotation.inl;/usr/local/include/OpenMVS/Common/SML.h;/usr/local/include/OpenMVS/Common/Sampler.inl;/usr/local/include/OpenMVS/Common/Semaphore.h;/usr/local/include/OpenMVS/Common/SharedPtr.h;/usr/local/include/OpenMVS/Common/Sphere.h;/usr/local/include/OpenMVS/Common/Sphere.inl;/usr/local/include/OpenMVS/Common/Streams.h;/usr/local/include/OpenMVS/Common/Strings.h;/usr/local/include/OpenMVS/Common/Thread.h;/usr/local/include/OpenMVS/Common/Timer.h;/usr/local/include/OpenMVS/Common/Types.h;/usr/local/include/OpenMVS/Common/Types.inl;/usr/local/include/OpenMVS/Common/Util.h;/usr/local/include/OpenMVS/Common/Util.inl")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/OpenMVS/Common" TYPE FILE FILES
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/AABB.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/AABB.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/AutoEstimator.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/AutoPtr.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/CUDA.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Common.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Config.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/ConfigTable.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/CriticalSection.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/EventQueue.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/FastDelegate.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/FastDelegateBind.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/FastDelegateCPP11.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/File.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Filters.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/HTMLDoc.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/HalfFloat.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Hash.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/LinkLib.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/List.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Log.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/MemFile.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/OBB.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/OBB.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Octree.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Octree.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Plane.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Plane.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Queue.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Random.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Ray.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Ray.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Rotation.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Rotation.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/SML.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Sampler.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Semaphore.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/SharedPtr.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Sphere.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Sphere.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Streams.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Strings.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Thread.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Timer.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Types.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Types.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Util.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Util.inl"
    )
endif()

