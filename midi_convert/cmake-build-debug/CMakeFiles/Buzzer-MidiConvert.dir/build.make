# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /williamye/program/arduino/Buzzer/midi_convert

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Buzzer-MidiConvert.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Buzzer-MidiConvert.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Buzzer-MidiConvert.dir/flags.make

CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.o: CMakeFiles/Buzzer-MidiConvert.dir/flags.make
CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.o -c /williamye/program/arduino/Buzzer/midi_convert/src/main.cpp

CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /williamye/program/arduino/Buzzer/midi_convert/src/main.cpp > CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.i

CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /williamye/program/arduino/Buzzer/midi_convert/src/main.cpp -o CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.s

# Object files for target Buzzer-MidiConvert
Buzzer__MidiConvert_OBJECTS = \
"CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.o"

# External object files for target Buzzer-MidiConvert
Buzzer__MidiConvert_EXTERNAL_OBJECTS =

Buzzer-MidiConvert: CMakeFiles/Buzzer-MidiConvert.dir/src/main.cpp.o
Buzzer-MidiConvert: CMakeFiles/Buzzer-MidiConvert.dir/build.make
Buzzer-MidiConvert: midifile/libmidifile.a
Buzzer-MidiConvert: CMakeFiles/Buzzer-MidiConvert.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Buzzer-MidiConvert"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Buzzer-MidiConvert.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Buzzer-MidiConvert.dir/build: Buzzer-MidiConvert

.PHONY : CMakeFiles/Buzzer-MidiConvert.dir/build

CMakeFiles/Buzzer-MidiConvert.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Buzzer-MidiConvert.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Buzzer-MidiConvert.dir/clean

CMakeFiles/Buzzer-MidiConvert.dir/depend:
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /williamye/program/arduino/Buzzer/midi_convert /williamye/program/arduino/Buzzer/midi_convert /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/CMakeFiles/Buzzer-MidiConvert.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Buzzer-MidiConvert.dir/depend

