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
include libs/Common/CMakeFiles/Common.dir/depend.make
# Include the progress variables for this target.
include libs/Common/CMakeFiles/Common.dir/progress.make

# Include the compile flags for this target's objects.
include libs/Common/CMakeFiles/Common.dir/flags.make

libs/Common/CMakeFiles/Common.dir/Common.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/Common.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/Common/CMakeFiles/Common.dir/Common.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/Common.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Common.cpp

libs/Common/CMakeFiles/Common.dir/Common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/Common.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Common.cpp > CMakeFiles/Common.dir/Common.cpp.i

libs/Common/CMakeFiles/Common.dir/Common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/Common.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Common.cpp -o CMakeFiles/Common.dir/Common.cpp.s

libs/Common/CMakeFiles/Common.dir/CUDA.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/CUDA.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/CUDA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libs/Common/CMakeFiles/Common.dir/CUDA.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/CUDA.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/CUDA.cpp

libs/Common/CMakeFiles/Common.dir/CUDA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/CUDA.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/CUDA.cpp > CMakeFiles/Common.dir/CUDA.cpp.i

libs/Common/CMakeFiles/Common.dir/CUDA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/CUDA.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/CUDA.cpp -o CMakeFiles/Common.dir/CUDA.cpp.s

libs/Common/CMakeFiles/Common.dir/ConfigTable.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/ConfigTable.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/ConfigTable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libs/Common/CMakeFiles/Common.dir/ConfigTable.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/ConfigTable.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/ConfigTable.cpp

libs/Common/CMakeFiles/Common.dir/ConfigTable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/ConfigTable.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/ConfigTable.cpp > CMakeFiles/Common.dir/ConfigTable.cpp.i

libs/Common/CMakeFiles/Common.dir/ConfigTable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/ConfigTable.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/ConfigTable.cpp -o CMakeFiles/Common.dir/ConfigTable.cpp.s

libs/Common/CMakeFiles/Common.dir/EventQueue.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/EventQueue.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/EventQueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libs/Common/CMakeFiles/Common.dir/EventQueue.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/EventQueue.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/EventQueue.cpp

libs/Common/CMakeFiles/Common.dir/EventQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/EventQueue.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/EventQueue.cpp > CMakeFiles/Common.dir/EventQueue.cpp.i

libs/Common/CMakeFiles/Common.dir/EventQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/EventQueue.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/EventQueue.cpp -o CMakeFiles/Common.dir/EventQueue.cpp.s

libs/Common/CMakeFiles/Common.dir/Log.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/Log.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Log.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object libs/Common/CMakeFiles/Common.dir/Log.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/Log.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Log.cpp

libs/Common/CMakeFiles/Common.dir/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/Log.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Log.cpp > CMakeFiles/Common.dir/Log.cpp.i

libs/Common/CMakeFiles/Common.dir/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/Log.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Log.cpp -o CMakeFiles/Common.dir/Log.cpp.s

libs/Common/CMakeFiles/Common.dir/SML.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/SML.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/SML.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object libs/Common/CMakeFiles/Common.dir/SML.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/SML.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/SML.cpp

libs/Common/CMakeFiles/Common.dir/SML.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/SML.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/SML.cpp > CMakeFiles/Common.dir/SML.cpp.i

libs/Common/CMakeFiles/Common.dir/SML.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/SML.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/SML.cpp -o CMakeFiles/Common.dir/SML.cpp.s

libs/Common/CMakeFiles/Common.dir/Timer.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/Timer.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object libs/Common/CMakeFiles/Common.dir/Timer.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/Timer.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Timer.cpp

libs/Common/CMakeFiles/Common.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/Timer.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Timer.cpp > CMakeFiles/Common.dir/Timer.cpp.i

libs/Common/CMakeFiles/Common.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/Timer.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Timer.cpp -o CMakeFiles/Common.dir/Timer.cpp.s

libs/Common/CMakeFiles/Common.dir/Types.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/Types.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object libs/Common/CMakeFiles/Common.dir/Types.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/Types.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Types.cpp

libs/Common/CMakeFiles/Common.dir/Types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/Types.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Types.cpp > CMakeFiles/Common.dir/Types.cpp.i

libs/Common/CMakeFiles/Common.dir/Types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/Types.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Types.cpp -o CMakeFiles/Common.dir/Types.cpp.s

libs/Common/CMakeFiles/Common.dir/Util.cpp.o: libs/Common/CMakeFiles/Common.dir/flags.make
libs/Common/CMakeFiles/Common.dir/Util.cpp.o: /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object libs/Common/CMakeFiles/Common.dir/Util.cpp.o"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/Util.cpp.o -c /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Util.cpp

libs/Common/CMakeFiles/Common.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/Util.cpp.i"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Util.cpp > CMakeFiles/Common.dir/Util.cpp.i

libs/Common/CMakeFiles/Common.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/Util.cpp.s"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common/Util.cpp -o CMakeFiles/Common.dir/Util.cpp.s

# Object files for target Common
Common_OBJECTS = \
"CMakeFiles/Common.dir/Common.cpp.o" \
"CMakeFiles/Common.dir/CUDA.cpp.o" \
"CMakeFiles/Common.dir/ConfigTable.cpp.o" \
"CMakeFiles/Common.dir/EventQueue.cpp.o" \
"CMakeFiles/Common.dir/Log.cpp.o" \
"CMakeFiles/Common.dir/SML.cpp.o" \
"CMakeFiles/Common.dir/Timer.cpp.o" \
"CMakeFiles/Common.dir/Types.cpp.o" \
"CMakeFiles/Common.dir/Util.cpp.o"

# External object files for target Common
Common_EXTERNAL_OBJECTS =

lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/Common.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/CUDA.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/ConfigTable.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/EventQueue.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/Log.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/SML.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/Timer.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/Types.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/Util.cpp.o
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/build.make
lib/libCommon.a: libs/Common/CMakeFiles/Common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library ../../lib/libCommon.a"
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && $(CMAKE_COMMAND) -P CMakeFiles/Common.dir/cmake_clean_target.cmake
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/Common/CMakeFiles/Common.dir/build: lib/libCommon.a
.PHONY : libs/Common/CMakeFiles/Common.dir/build

libs/Common/CMakeFiles/Common.dir/clean:
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common && $(CMAKE_COMMAND) -P CMakeFiles/Common.dir/cmake_clean.cmake
.PHONY : libs/Common/CMakeFiles/Common.dir/clean

libs/Common/CMakeFiles/Common.dir/depend:
	cd /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/finley/Desktop/course/CODE/MVS/openMVS /Users/finley/Desktop/course/CODE/MVS/openMVS/libs/Common /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common /Users/finley/Desktop/course/CODE/MVS/openMVS_build_clion/libs/Common/CMakeFiles/Common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/Common/CMakeFiles/Common.dir/depend

