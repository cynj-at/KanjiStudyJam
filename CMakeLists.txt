cmake_minimum_required(VERSION 3.10)

project(KanjiStudyJam)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(
    include
    include/sqlite3/include
    include/raylib/include
    include/glfw3/include
    include/oscpack/ip
    include/oscpack
)

link_directories(
    # ${PROJECT_SOURCE_DIR}/lib
    ${PROJECT_SOURCE_DIR}/include/raylib/lib
    ${PROJECT_SOURCE_DIR}/include/sqlite3/lib
    ${PROJECT_SOURCE_DIR}/include/glfw3/lib
)

file(GLOB SOURCES "src/*.cpp")

file(GLOB OSC_PACK_CPP_FILES
    ${PROJECT_SOURCE_DIR}/include/oscpack/ip/IpEndpointName.cpp
    ${PROJECT_SOURCE_DIR}/include/oscpack/ip/NetworkingUtils.cpp
    ${PROJECT_SOURCE_DIR}/include/oscpack/ip/UdpSocket.cpp
    ${PROJECT_SOURCE_DIR}/include/oscpack/osc/OscTypes.cpp
    ${PROJECT_SOURCE_DIR}/include/oscpack/osc/OscReceivedElements.cpp
    ${PROJECT_SOURCE_DIR}/include/oscpack/osc/OscPrintReceivedElements.cpp
    ${PROJECT_SOURCE_DIR}/include/oscpack/osc/OscOutboundPacketStream.cpp
)
list(APPEND SOURCES ${OSC_PACK_CPP_FILES})

add_executable(KanjiStudyJam ${SOURCES})

target_link_libraries(KanjiStudyJam
    PRIVATE raylib
    PRIVATE sqlite3
)

if (WIN32)
    target_link_libraries(KanjiStudyJam
        PRIVATE winmm
        PRIVATE gdi32
        PRIVATE opengl32
        PRIVATE ws2_32
        PRIVATE glfw3dll
    )

    add_custom_command(TARGET KanjiStudyJam POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
            ${PROJECT_SOURCE_DIR}/include/sqlite3/bin/sqlite3.dll
            ${PROJECT_BINARY_DIR}/$<CONFIG>/sqlite3.dll
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
            ${PROJECT_SOURCE_DIR}/include/raylib/bin/raylib.dll
            ${PROJECT_BINARY_DIR}/$<CONFIG>/raylib.dll
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
            ${PROJECT_SOURCE_DIR}/include/glfw3/bin/glfw3.dll
            ${PROJECT_BINARY_DIR}/$<CONFIG>/glfw3.dll
    )
endif()

if (UNIX AND NOT APPLE)
    target_link_libraries(KanjiStudyJam
        PRIVATE GL
        PRIVATE m
        PRIVATE pthread
        PRIVATE dl
    )
endif()

if (APPLE)
    target_compile_definitions(KanjiStudyJam PRIVATE SQLITE_API=)
    find_library(COCOA_LIBRARY Cocoa)
    find_library(IOKIT_LIBRARY IOKit)
    find_library(COREVIDEO_LIBRARY CoreVideo)
    find_library(OPENGL_LIBRARY OpenGL)
    find_package(GLFW3 REQUIRED)
    target_link_libraries(KanjiStudyJam
        PRIVATE ${COCOA_LIBRARY}
        PRIVATE ${IOKIT_LIBRARY}
        PRIVATE ${COREVIDEO_LIBRARY}
        PRIVATE ${OPENGL_LIBRARY}
        PRIVATE ${glfw}
    )
endif()