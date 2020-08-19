cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-fluidsynth)

# DOCUMENTATION_START {
hunter_add_package(fluidsynth)
find_package(fluidsynth CONFIG REQUIRED)

add_executable(main main.cpp)
target_link_libraries(main PUBLIC fluidsynth::fluidsynth)
# DOCUMENTATION_END }
