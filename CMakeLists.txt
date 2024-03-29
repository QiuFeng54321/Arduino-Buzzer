cmake_minimum_required(VERSION 2.8.4)
set(USE_ARDUINO_AS_NORMAL 1)
if (USE_ARDUINO_AS_NORMAL)
    message("Use arduino as normal")
    set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/ArduinoToolchain.cmake)
endif ()
set(CMAKE_CXX_STANDARD 17)





if (USE_ARDUINO_AS_NORMAL)
    set(PROJECT_NAME Buzzer)


    project(${PROJECT_NAME})

    set(${PROJECT_NAME}_BOARD uno)
    # set(ARDUINO_CPU)


    # Define additional source and header files or default arduino sketch files
    #set(${PROJECT_NAME}_SRCS Music.cpp)
    set(${PROJECT_NAME}_HDRS User_Setup.h)

    ### Additional static libraries to include in the target.
    # set(${PROJECT_NAME}_LIBS)

    ### Main sketch file
    set(${PROJECT_NAME}_SKETCH buzzer.ino)

    add_definitions(-DUSE_ARDUINO)

    #    include_directories(${ARDUINO_LIBRARIES_PATH}/ArduinoSTL-1.1.0/src pt)

    ### Add project directories into the build
    # add_subdirectory()

    ### Additional settings to add non-standard or your own Arduino libraries.
    # For this example (libs will contain additional arduino libraries)
    # An Arduino library my_lib will contain files in libs/my_lib/: my_lib.h, my_lib.cpp + any other cpp files
    # link_directories(${CMAKE_CURRENT_SOURCE_DIR}/)

    # For nested library sources replace ${LIB_NAME} with library name for each library
    # set(_RECURSE true)

    #### Additional settings for programmer. From programmers.txt
    # set(${PROJECT_NAME}_PROGRAMMER avrispmkii)
    set(${PROJECT_NAME}_PORT /dev/cu.usbmodem14201)
    # set(uno.upload.speed 9600)

    ## Verbose build process
    # set(${PROJECT_NAME}_AFLAGS -v)

    generate_arduino_firmware(${PROJECT_NAME})

    message("Path: ${ARDUINO_LIBRARIES_PATH}")


    set(PROJECT_NAME Buzzer_Empty)


    project(${PROJECT_NAME})

    set(${PROJECT_NAME}_BOARD uno)
    # set(ARDUINO_CPU)


    # Define additional source and header files or default arduino sketch files
    #set(${PROJECT_NAME}_SRCS Music.cpp)
    set(${PROJECT_NAME}_HDRS User_Setup.h)

    ### Additional static libraries to include in the target.
    # set(${PROJECT_NAME}_LIBS)

    ### Main sketch file
    set(${PROJECT_NAME}_SKETCH empty/empty.ino)

    add_definitions(-DUSE_ARDUINO)

    #    include_directories(${ARDUINO_LIBRARIES_PATH}/ArduinoSTL-1.1.0/src pt)

    ### Add project directories into the build
    # add_subdirectory()

    ### Additional settings to add non-standard or your own Arduino libraries.
    # For this example (libs will contain additional arduino libraries)
    # An Arduino library my_lib will contain files in libs/my_lib/: my_lib.h, my_lib.cpp + any other cpp files
    # link_directories(${CMAKE_CURRENT_SOURCE_DIR}/)

    # For nested library sources replace ${LIB_NAME} with library name for each library
    # set(_RECURSE true)

    #### Additional settings for programmer. From programmers.txt
    # set(${PROJECT_NAME}_PROGRAMMER avrispmkii)
    set(${PROJECT_NAME}_PORT /dev/cu.usbmodem14201)
    # set(uno.upload.speed 9600)

    ## Verbose build process
    # set(${PROJECT_NAME}_AFLAGS -v)

    generate_arduino_firmware(${PROJECT_NAME})

    message("Path: ${ARDUINO_LIBRARIES_PATH}")
else ()
    add_subdirectory(midi_convert)
    file(GLOB SOURCES *.hpp *.cpp *.ino global/*.hpp)
    message("${SOURCES}")
    add_executable(BuzzerLocal ${SOURCES})
endif ()


#add_subdirectory(midi_convert)