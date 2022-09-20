# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-hwy)

# DOCUMENTATION_START {
hunter_add_package(hwy)
find_package(hwy CONFIG REQUIRED)

add_library(example example.cpp)
target_link_libraries(example PUBLIC hwy::hwy)
# DOCUMENTATION_END }
