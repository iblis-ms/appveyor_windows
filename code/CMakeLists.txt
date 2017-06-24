PROJECT(WindowsCI)
cmake_minimum_required(VERSION 2.8)

message(STATUS "CMAKE_CXX_COMPILER_ID = ${CMAKE_CXX_COMPILER_ID}")
message(STATUS "CMAKE_CXX_COMPILER = ${CMAKE_CXX_COMPILER}")

add_executable(Test main.cpp)

