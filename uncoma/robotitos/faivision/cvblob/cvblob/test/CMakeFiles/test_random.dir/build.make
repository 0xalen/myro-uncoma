# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob

# Include any dependencies generated for this target.
include test/CMakeFiles/test_random.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_random.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_random.dir/flags.make

test/CMakeFiles/test_random.dir/test_random.o: test/CMakeFiles/test_random.dir/flags.make
test/CMakeFiles/test_random.dir/test_random.o: test/test_random.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/test_random.dir/test_random.o"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -O3 -o CMakeFiles/test_random.dir/test_random.o -c /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/test_random.cpp

test/CMakeFiles/test_random.dir/test_random.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_random.dir/test_random.i"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -O3 -E /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/test_random.cpp > CMakeFiles/test_random.dir/test_random.i

test/CMakeFiles/test_random.dir/test_random.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_random.dir/test_random.s"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -O3 -S /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/test_random.cpp -o CMakeFiles/test_random.dir/test_random.s

test/CMakeFiles/test_random.dir/test_random.o.requires:
.PHONY : test/CMakeFiles/test_random.dir/test_random.o.requires

test/CMakeFiles/test_random.dir/test_random.o.provides: test/CMakeFiles/test_random.dir/test_random.o.requires
	$(MAKE) -f test/CMakeFiles/test_random.dir/build.make test/CMakeFiles/test_random.dir/test_random.o.provides.build
.PHONY : test/CMakeFiles/test_random.dir/test_random.o.provides

test/CMakeFiles/test_random.dir/test_random.o.provides.build: test/CMakeFiles/test_random.dir/test_random.o

# Object files for target test_random
test_random_OBJECTS = \
"CMakeFiles/test_random.dir/test_random.o"

# External object files for target test_random
test_random_EXTERNAL_OBJECTS =

bin/test_random: test/CMakeFiles/test_random.dir/test_random.o
bin/test_random: test/CMakeFiles/test_random.dir/build.make
bin/test_random: lib/libcvblob.so
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
bin/test_random: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
bin/test_random: test/CMakeFiles/test_random.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/test_random"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_random.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_random.dir/build: bin/test_random
.PHONY : test/CMakeFiles/test_random.dir/build

test/CMakeFiles/test_random.dir/requires: test/CMakeFiles/test_random.dir/test_random.o.requires
.PHONY : test/CMakeFiles/test_random.dir/requires

test/CMakeFiles/test_random.dir/clean:
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && $(CMAKE_COMMAND) -P CMakeFiles/test_random.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_random.dir/clean

test/CMakeFiles/test_random.dir/depend:
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/CMakeFiles/test_random.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_random.dir/depend
