# Install script for directory: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/OpenMVS/Math/Common.h;/usr/local/include/OpenMVS/Math/LBP.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/OpenMVS/Math" TYPE FILE FILES
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/Common.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/LBP.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/OpenMVS/Math/IBFS/IBFS.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/OpenMVS/Math/IBFS" TYPE FILE FILES "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/IBFS/IBFS.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/OpenMVS/Math/LMFit/lmmin.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/OpenMVS/Math/LMFit" TYPE FILE FILES "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/LMFit/lmmin.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/OpenMVS/Math/TRWS/MRFEnergy.h;/usr/local/include/OpenMVS/Math/TRWS/MRFEnergy.inl;/usr/local/include/OpenMVS/Math/TRWS/instances.h;/usr/local/include/OpenMVS/Math/TRWS/minimize.inl;/usr/local/include/OpenMVS/Math/TRWS/ordering.inl;/usr/local/include/OpenMVS/Math/TRWS/treeProbabilities.inl;/usr/local/include/OpenMVS/Math/TRWS/typeBinary.h;/usr/local/include/OpenMVS/Math/TRWS/typeBinaryFast.h;/usr/local/include/OpenMVS/Math/TRWS/typeGeneral.h;/usr/local/include/OpenMVS/Math/TRWS/typePotts.h;/usr/local/include/OpenMVS/Math/TRWS/typeTruncatedLinear.h;/usr/local/include/OpenMVS/Math/TRWS/typeTruncatedLinear2D.h;/usr/local/include/OpenMVS/Math/TRWS/typeTruncatedQuadratic.h;/usr/local/include/OpenMVS/Math/TRWS/typeTruncatedQuadratic2D.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/include/OpenMVS/Math/TRWS" TYPE FILE FILES
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/MRFEnergy.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/MRFEnergy.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/instances.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/minimize.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/ordering.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/treeProbabilities.inl"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeBinary.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeBinaryFast.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeGeneral.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typePotts.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeTruncatedLinear.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeTruncatedLinear2D.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeTruncatedQuadratic.h"
    "/Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Math/TRWS/typeTruncatedQuadratic2D.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/OpenMVS/libMath.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib/OpenMVS" TYPE STATIC_LIBRARY FILES "/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/lib/libMath.a")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libMath.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libMath.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/usr/local/lib/OpenMVS/libMath.a")
  endif()
endif()

