# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    hwy
    VERSION
    1.0.1
    URL
    "https://github.com/drodin/highway/archive/refs/heads/hunter-1.0.1.zip"
    SHA1
    e1588be4154a1b97b2209d94e635a26f0c955d5f
)

hunter_cmake_args(
    hwy
    CMAKE_ARGS
    BUILD_TESTING=OFF
    HWY_ENABLE_CONTRIB=OFF
    HWY_ENABLE_EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(hwy)
hunter_download(PACKAGE_NAME hwy)
