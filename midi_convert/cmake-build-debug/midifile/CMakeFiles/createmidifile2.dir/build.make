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
include midifile/CMakeFiles/createmidifile2.dir/depend.make

# Include the progress variables for this target.
include midifile/CMakeFiles/createmidifile2.dir/progress.make

# Include the compile flags for this target's objects.
include midifile/CMakeFiles/createmidifile2.dir/flags.make

midifile/CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.o: midifile/CMakeFiles/createmidifile2.dir/flags.make
midifile/CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.o: ../midifile/tools/createmidifile2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object midifile/CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.o"
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.o -c /williamye/program/arduino/Buzzer/midi_convert/midifile/tools/createmidifile2.cpp

midifile/CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.i"
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /williamye/program/arduino/Buzzer/midi_convert/midifile/tools/createmidifile2.cpp > CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.i

midifile/CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.s"
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /williamye/program/arduino/Buzzer/midi_convert/midifile/tools/createmidifile2.cpp -o CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.s

# Object files for target createmidifile2
createmidifile2_OBJECTS = \
"CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.o"

# External object files for target createmidifile2
createmidifile2_EXTERNAL_OBJECTS =

midifile/createmidifile2: midifile/CMakeFiles/createmidifile2.dir/tools/createmidifile2.cpp.o
midifile/createmidifile2: midifile/CMakeFiles/createmidifile2.dir/build.make
midifile/createmidifile2: midifile/libmidifile.a
midifile/createmidifile2: midifile/CMakeFiles/createmidifile2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable createmidifile2"
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/createmidifile2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
midifile/CMakeFiles/createmidifile2.dir/build: midifile/createmidifile2

.PHONY : midifile/CMakeFiles/createmidifile2.dir/build

midifile/CMakeFiles/createmidifile2.dir/clean:
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile && $(CMAKE_COMMAND) -P CMakeFiles/createmidifile2.dir/cmake_clean.cmake
.PHONY : midifile/CMakeFiles/createmidifile2.dir/clean

midifile/CMakeFiles/createmidifile2.dir/depend:
	cd /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /williamye/program/arduino/Buzzer/midi_convert /williamye/program/arduino/Buzzer/midi_convert/midifile /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile /williamye/program/arduino/Buzzer/midi_convert/cmake-build-debug/midifile/CMakeFiles/createmidifile2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : midifile/CMakeFiles/createmidifile2.dir/depend

