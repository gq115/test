cmake_minimum_required(VERSION 3.20)

project(test_git_cmake_lib LANGUAGES C CXX)

add_library(test_git_cmake_lib STATIC test_git_cmake_lib.cpp)

target_include_directories(test_git_cmake_lib PUBLIC ./inc)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/bin/$<CONFIG>)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/lib/$<CONFIG>)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build/lib/$<CONFIG>)
install(TARGETS test_git_cmake_lib
        ARCHIVE DESTINATION .
        LIBRARY DESTINATION .
        RUNTIME DESTINATION .)