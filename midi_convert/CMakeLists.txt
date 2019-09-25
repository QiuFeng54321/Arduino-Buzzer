cmake_minimum_required(VERSION 2.8.4)
set(CMAKE_CXX_STANDARD 17)
set(PROJECT_NAME Buzzer-MidiConvert)

add_subdirectory(midifile)

set(SOURCES src/main.cpp ../global/PITCH.hpp)

include_directories(midifile/include ../global)

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} midifile)