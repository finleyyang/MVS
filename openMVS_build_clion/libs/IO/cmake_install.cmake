# Install script for directory: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO

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
   "/usr/local/lib/OpenMVS/libIO.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/lib/libIO.a")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libIO.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libIO.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libIO.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/OpenMVS/IO/Common.h;/usr/local/include/OpenMVS/IO/Image.h;/usr/local/include/OpenMVS/IO/ImageBMP.h;/usr/local/include/OpenMVS/IO/ImageDDS.h;/usr/local/include/OpenMVS/IO/ImageJPG.h;/usr/local/include/OpenMVS/IO/ImagePNG.h;/usr/local/include/OpenMVS/IO/ImageSCI.h;/usr/local/include/OpenMVS/IO/ImageTGA.h;/usr/local/include/OpenMVS/IO/ImageTIFF.h;/usr/local/include/OpenMVS/IO/OBJ.h;/usr/local/include/OpenMVS/IO/PLY.h;/usr/local/include/OpenMVS/IO/read_pose.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/OpenMVS/IO" TYPE FILE FILES
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/Common.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/Image.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImageBMP.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImageDDS.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImageJPG.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImagePNG.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImageSCI.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImageTGA.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/ImageTIFF.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/OBJ.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/PLY.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/IO/read_pose.h"
    )
endif()

