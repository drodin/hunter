cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-libmad)

# DOCUMENTATION_START {
hunter_add_package(libmad)
find_package(libmad CONFIG REQUIRED)

add_executable(main main.cpp)
target_link_libraries(main PUBLIC libmad::mad)
# DOCUMENTATION_END }
