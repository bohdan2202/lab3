cmake_minimum_required(VERSION 2.8)

project(Lab3)

set(SOURCE_EXE mylab3.cpp)

set(SOURCE_LIB note.cpp)

add_library(note STATIC ${SOURCE_LIB})

add_executable(mylab3 ${SOURCE_EXE})

target_link_libraries(mylab3 note)	