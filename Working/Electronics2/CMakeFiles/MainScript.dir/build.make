# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/UCSD-RoboFishy/Working/Electronics2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/UCSD-RoboFishy/Working/Electronics2

# Include any dependencies generated for this target.
include CMakeFiles/MainScript.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MainScript.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MainScript.dir/flags.make

CMakeFiles/MainScript.dir/MainScript.cpp.o: CMakeFiles/MainScript.dir/flags.make
CMakeFiles/MainScript.dir/MainScript.cpp.o: MainScript.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/UCSD-RoboFishy/Working/Electronics2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MainScript.dir/MainScript.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MainScript.dir/MainScript.cpp.o -c /home/pi/UCSD-RoboFishy/Working/Electronics2/MainScript.cpp

CMakeFiles/MainScript.dir/MainScript.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainScript.dir/MainScript.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/UCSD-RoboFishy/Working/Electronics2/MainScript.cpp > CMakeFiles/MainScript.dir/MainScript.cpp.i

CMakeFiles/MainScript.dir/MainScript.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainScript.dir/MainScript.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/UCSD-RoboFishy/Working/Electronics2/MainScript.cpp -o CMakeFiles/MainScript.dir/MainScript.cpp.s

CMakeFiles/MainScript.dir/MainScript.cpp.o.requires:

.PHONY : CMakeFiles/MainScript.dir/MainScript.cpp.o.requires

CMakeFiles/MainScript.dir/MainScript.cpp.o.provides: CMakeFiles/MainScript.dir/MainScript.cpp.o.requires
	$(MAKE) -f CMakeFiles/MainScript.dir/build.make CMakeFiles/MainScript.dir/MainScript.cpp.o.provides.build
.PHONY : CMakeFiles/MainScript.dir/MainScript.cpp.o.provides

CMakeFiles/MainScript.dir/MainScript.cpp.o.provides.build: CMakeFiles/MainScript.dir/MainScript.cpp.o


CMakeFiles/MainScript.dir/Functions.cpp.o: CMakeFiles/MainScript.dir/flags.make
CMakeFiles/MainScript.dir/Functions.cpp.o: Functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/UCSD-RoboFishy/Working/Electronics2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MainScript.dir/Functions.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MainScript.dir/Functions.cpp.o -c /home/pi/UCSD-RoboFishy/Working/Electronics2/Functions.cpp

CMakeFiles/MainScript.dir/Functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainScript.dir/Functions.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/UCSD-RoboFishy/Working/Electronics2/Functions.cpp > CMakeFiles/MainScript.dir/Functions.cpp.i

CMakeFiles/MainScript.dir/Functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainScript.dir/Functions.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/UCSD-RoboFishy/Working/Electronics2/Functions.cpp -o CMakeFiles/MainScript.dir/Functions.cpp.s

CMakeFiles/MainScript.dir/Functions.cpp.o.requires:

.PHONY : CMakeFiles/MainScript.dir/Functions.cpp.o.requires

CMakeFiles/MainScript.dir/Functions.cpp.o.provides: CMakeFiles/MainScript.dir/Functions.cpp.o.requires
	$(MAKE) -f CMakeFiles/MainScript.dir/build.make CMakeFiles/MainScript.dir/Functions.cpp.o.provides.build
.PHONY : CMakeFiles/MainScript.dir/Functions.cpp.o.provides

CMakeFiles/MainScript.dir/Functions.cpp.o.provides.build: CMakeFiles/MainScript.dir/Functions.cpp.o


CMakeFiles/MainScript.dir/V4L2Control.cpp.o: CMakeFiles/MainScript.dir/flags.make
CMakeFiles/MainScript.dir/V4L2Control.cpp.o: V4L2Control.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/UCSD-RoboFishy/Working/Electronics2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MainScript.dir/V4L2Control.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MainScript.dir/V4L2Control.cpp.o -c /home/pi/UCSD-RoboFishy/Working/Electronics2/V4L2Control.cpp

CMakeFiles/MainScript.dir/V4L2Control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MainScript.dir/V4L2Control.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/UCSD-RoboFishy/Working/Electronics2/V4L2Control.cpp > CMakeFiles/MainScript.dir/V4L2Control.cpp.i

CMakeFiles/MainScript.dir/V4L2Control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MainScript.dir/V4L2Control.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/UCSD-RoboFishy/Working/Electronics2/V4L2Control.cpp -o CMakeFiles/MainScript.dir/V4L2Control.cpp.s

CMakeFiles/MainScript.dir/V4L2Control.cpp.o.requires:

.PHONY : CMakeFiles/MainScript.dir/V4L2Control.cpp.o.requires

CMakeFiles/MainScript.dir/V4L2Control.cpp.o.provides: CMakeFiles/MainScript.dir/V4L2Control.cpp.o.requires
	$(MAKE) -f CMakeFiles/MainScript.dir/build.make CMakeFiles/MainScript.dir/V4L2Control.cpp.o.provides.build
.PHONY : CMakeFiles/MainScript.dir/V4L2Control.cpp.o.provides

CMakeFiles/MainScript.dir/V4L2Control.cpp.o.provides.build: CMakeFiles/MainScript.dir/V4L2Control.cpp.o


# Object files for target MainScript
MainScript_OBJECTS = \
"CMakeFiles/MainScript.dir/MainScript.cpp.o" \
"CMakeFiles/MainScript.dir/Functions.cpp.o" \
"CMakeFiles/MainScript.dir/V4L2Control.cpp.o"

# External object files for target MainScript
MainScript_EXTERNAL_OBJECTS =

MainScript: CMakeFiles/MainScript.dir/MainScript.cpp.o
MainScript: CMakeFiles/MainScript.dir/Functions.cpp.o
MainScript: CMakeFiles/MainScript.dir/V4L2Control.cpp.o
MainScript: CMakeFiles/MainScript.dir/build.make
MainScript: /usr/local/lib/libopencv_ml.so.3.2.0
MainScript: /usr/local/lib/libopencv_objdetect.so.3.2.0
MainScript: /usr/local/lib/libopencv_shape.so.3.2.0
MainScript: /usr/local/lib/libopencv_stitching.so.3.2.0
MainScript: /usr/local/lib/libopencv_superres.so.3.2.0
MainScript: /usr/local/lib/libopencv_videostab.so.3.2.0
MainScript: /usr/lib/arm-linux-gnueabihf/libpython2.7.so
MainScript: /usr/local/lib/libopencv_calib3d.so.3.2.0
MainScript: /usr/local/lib/libopencv_features2d.so.3.2.0
MainScript: /usr/local/lib/libopencv_flann.so.3.2.0
MainScript: /usr/local/lib/libopencv_highgui.so.3.2.0
MainScript: /usr/local/lib/libopencv_photo.so.3.2.0
MainScript: /usr/local/lib/libopencv_video.so.3.2.0
MainScript: /usr/local/lib/libopencv_videoio.so.3.2.0
MainScript: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
MainScript: /usr/local/lib/libopencv_imgproc.so.3.2.0
MainScript: /usr/local/lib/libopencv_core.so.3.2.0
MainScript: CMakeFiles/MainScript.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/UCSD-RoboFishy/Working/Electronics2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable MainScript"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MainScript.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MainScript.dir/build: MainScript

.PHONY : CMakeFiles/MainScript.dir/build

CMakeFiles/MainScript.dir/requires: CMakeFiles/MainScript.dir/MainScript.cpp.o.requires
CMakeFiles/MainScript.dir/requires: CMakeFiles/MainScript.dir/Functions.cpp.o.requires
CMakeFiles/MainScript.dir/requires: CMakeFiles/MainScript.dir/V4L2Control.cpp.o.requires

.PHONY : CMakeFiles/MainScript.dir/requires

CMakeFiles/MainScript.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MainScript.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MainScript.dir/clean

CMakeFiles/MainScript.dir/depend:
	cd /home/pi/UCSD-RoboFishy/Working/Electronics2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/UCSD-RoboFishy/Working/Electronics2 /home/pi/UCSD-RoboFishy/Working/Electronics2 /home/pi/UCSD-RoboFishy/Working/Electronics2 /home/pi/UCSD-RoboFishy/Working/Electronics2 /home/pi/UCSD-RoboFishy/Working/Electronics2/CMakeFiles/MainScript.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MainScript.dir/depend

