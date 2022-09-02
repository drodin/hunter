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
    brotli
    VERSION
    1.0.9-p0
    URL
    "https://github.com/drodin/brotli/archive/refs/heads/hunter-1.0.9.zip"
    SHA1
    59f8f34af46946536cd5d6a50fd345112e893523
)

hunter_cmake_args(brotli CMAKE_ARGS
    BROTLI_DISABLE_TESTS=YES
    BROTLI_BUILD_EXECUTABLE=NO
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(brotli)
hunter_download(PACKAGE_NAME brotli)
