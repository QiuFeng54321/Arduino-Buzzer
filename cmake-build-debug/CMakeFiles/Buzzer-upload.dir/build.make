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
CMAKE_SOURCE_DIR = /williamye/program/arduino/Buzzer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /williamye/program/arduino/Buzzer/cmake-build-debug

# Utility rule file for Buzzer-upload.

# Include the progress variables for this target.
include CMakeFiles/Buzzer-upload.dir/progress.make

CMakeFiles/Buzzer-upload: Buzzer.elf
	/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude -C/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf -patmega328p -carduino -b115200 -P/dev/cu.usbmodem14201 -D -V -Uflash:w:/williamye/program/arduino/Buzzer/cmake-build-debug/Buzzer.hex:i -Ueeprom:w:/williamye/program/arduino/Buzzer/cmake-build-debug/Buzzer.eep:i

Buzzer-upload: CMakeFiles/Buzzer-upload
Buzzer-upload: CMakeFiles/Buzzer-upload.dir/build.make

.PHONY : Buzzer-upload

# Rule to build all files generated by this target.
CMakeFiles/Buzzer-upload.dir/build: Buzzer-upload

.PHONY : CMakeFiles/Buzzer-upload.dir/build

CMakeFiles/Buzzer-upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Buzzer-upload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Buzzer-upload.dir/clean

CMakeFiles/Buzzer-upload.dir/depend:
	cd /williamye/program/arduino/Buzzer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /williamye/program/arduino/Buzzer /williamye/program/arduino/Buzzer /williamye/program/arduino/Buzzer/cmake-build-debug /williamye/program/arduino/Buzzer/cmake-build-debug /williamye/program/arduino/Buzzer/cmake-build-debug/CMakeFiles/Buzzer-upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Buzzer-upload.dir/depend

