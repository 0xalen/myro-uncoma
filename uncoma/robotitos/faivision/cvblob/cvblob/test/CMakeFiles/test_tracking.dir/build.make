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
include test/CMakeFiles/test_tracking.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_tracking.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_tracking.dir/flags.make

test/CMakeFiles/test_tracking.dir/test_tracking.o: test/CMakeFiles/test_tracking.dir/flags.make
test/CMakeFiles/test_tracking.dir/test_tracking.o: test/test_tracking.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/test_tracking.dir/test_tracking.o"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -O3 -o CMakeFiles/test_tracking.dir/test_tracking.o -c /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/test_tracking.cpp

test/CMakeFiles/test_tracking.dir/test_tracking.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_tracking.dir/test_tracking.i"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -O3 -E /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/test_tracking.cpp > CMakeFiles/test_tracking.dir/test_tracking.i

test/CMakeFiles/test_tracking.dir/test_tracking.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_tracking.dir/test_tracking.s"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -O3 -S /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/test_tracking.cpp -o CMakeFiles/test_tracking.dir/test_tracking.s

test/CMakeFiles/test_tracking.dir/test_tracking.o.requires:
.PHONY : test/CMakeFiles/test_tracking.dir/test_tracking.o.requires

test/CMakeFiles/test_tracking.dir/test_tracking.o.provides: test/CMakeFiles/test_tracking.dir/test_tracking.o.requires
	$(MAKE) -f test/CMakeFiles/test_tracking.dir/build.make test/CMakeFiles/test_tracking.dir/test_tracking.o.provides.build
.PHONY : test/CMakeFiles/test_tracking.dir/test_tracking.o.provides

test/CMakeFiles/test_tracking.dir/test_tracking.o.provides.build: test/CMakeFiles/test_tracking.dir/test_tracking.o

# Object files for target test_tracking
test_tracking_OBJECTS = \
"CMakeFiles/test_tracking.dir/test_tracking.o"

# External object files for target test_tracking
test_tracking_EXTERNAL_OBJECTS =

bin/test_tracking: test/CMakeFiles/test_tracking.dir/test_tracking.o
bin/test_tracking: test/CMakeFiles/test_tracking.dir/build.make
bin/test_tracking: lib/libcvblob.so
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
bin/test_tracking: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
bin/test_tracking: test/CMakeFiles/test_tracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/test_tracking"
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_tracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_tracking.dir/build: bin/test_tracking
.PHONY : test/CMakeFiles/test_tracking.dir/build

test/CMakeFiles/test_tracking.dir/requires: test/CMakeFiles/test_tracking.dir/test_tracking.o.requires
.PHONY : test/CMakeFiles/test_tracking.dir/requires

test/CMakeFiles/test_tracking.dir/clean:
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test && $(CMAKE_COMMAND) -P CMakeFiles/test_tracking.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_tracking.dir/clean

test/CMakeFiles/test_tracking.dir/depend:
	cd /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test /home/csfinch/Desktop/Myro/se_uncoma/robotitos/faivision/cvblob/cvblob/test/CMakeFiles/test_tracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_tracking.dir/depend
