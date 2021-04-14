# cmake_minimum_required(VERSION <specify CMake version here>)
project(1C_task)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "-Wall -Werror")

add_executable(1C_task main.cpp deckstate.hpp solver.hpp const.hpp deckstate.cpp solver.cpp)