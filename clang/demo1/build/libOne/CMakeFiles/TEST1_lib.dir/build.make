# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/abel/Documents/gitprojects/AllDemos/clang/demo1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build

# Include any dependencies generated for this target.
include libOne/CMakeFiles/TEST1_lib.dir/depend.make

# Include the progress variables for this target.
include libOne/CMakeFiles/TEST1_lib.dir/progress.make

# Include the compile flags for this target's objects.
include libOne/CMakeFiles/TEST1_lib.dir/flags.make

libOne/CMakeFiles/TEST1_lib.dir/src/test1.cpp.o: libOne/CMakeFiles/TEST1_lib.dir/flags.make
libOne/CMakeFiles/TEST1_lib.dir/src/test1.cpp.o: /Users/abel/Documents/gitprojects/AllDemos/clang/libOne/src/test1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libOne/CMakeFiles/TEST1_lib.dir/src/test1.cpp.o"
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TEST1_lib.dir/src/test1.cpp.o -c /Users/abel/Documents/gitprojects/AllDemos/clang/libOne/src/test1.cpp

libOne/CMakeFiles/TEST1_lib.dir/src/test1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TEST1_lib.dir/src/test1.cpp.i"
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abel/Documents/gitprojects/AllDemos/clang/libOne/src/test1.cpp > CMakeFiles/TEST1_lib.dir/src/test1.cpp.i

libOne/CMakeFiles/TEST1_lib.dir/src/test1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TEST1_lib.dir/src/test1.cpp.s"
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abel/Documents/gitprojects/AllDemos/clang/libOne/src/test1.cpp -o CMakeFiles/TEST1_lib.dir/src/test1.cpp.s

# Object files for target TEST1_lib
TEST1_lib_OBJECTS = \
"CMakeFiles/TEST1_lib.dir/src/test1.cpp.o"

# External object files for target TEST1_lib
TEST1_lib_EXTERNAL_OBJECTS =

libOne/libTEST1_lib.a: libOne/CMakeFiles/TEST1_lib.dir/src/test1.cpp.o
libOne/libTEST1_lib.a: libOne/CMakeFiles/TEST1_lib.dir/build.make
libOne/libTEST1_lib.a: libOne/CMakeFiles/TEST1_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libTEST1_lib.a"
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne && $(CMAKE_COMMAND) -P CMakeFiles/TEST1_lib.dir/cmake_clean_target.cmake
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TEST1_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libOne/CMakeFiles/TEST1_lib.dir/build: libOne/libTEST1_lib.a

.PHONY : libOne/CMakeFiles/TEST1_lib.dir/build

libOne/CMakeFiles/TEST1_lib.dir/clean:
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne && $(CMAKE_COMMAND) -P CMakeFiles/TEST1_lib.dir/cmake_clean.cmake
.PHONY : libOne/CMakeFiles/TEST1_lib.dir/clean

libOne/CMakeFiles/TEST1_lib.dir/depend:
	cd /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abel/Documents/gitprojects/AllDemos/clang/demo1 /Users/abel/Documents/gitprojects/AllDemos/clang/libOne /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne /Users/abel/Documents/gitprojects/AllDemos/clang/demo1/build/libOne/CMakeFiles/TEST1_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libOne/CMakeFiles/TEST1_lib.dir/depend

