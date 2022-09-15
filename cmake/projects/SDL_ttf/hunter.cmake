# !!! DO NOT PLACE HEADER GUARDS HERE !!!


include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    SDL_ttf
    VERSION
    "2.0.15-p0"
    URL
    "https://github.com/cpp-pm/SDL_ttf/archive/v2.0.15-p0.tar.gz"
    SHA1
    a3342fac71e73f140da6bffc5a30c67ba9cfb826
)

hunter_add_version(
    PACKAGE_NAME
    SDL_ttf
    VERSION
    "2.0.14-p0"
    URL
    "https://github.com/cpp-pm/SDL_ttf_legacy/archive/v2.0.14-p0.tar.gz"
    SHA1
    be9de6d9eb411e9e0910a26a13cd29d234e51906
)

hunter_add_version(
    PACKAGE_NAME
    SDL_ttf
    VERSION
    "2.0.18-p0"
    URL
    "https://github.com/cpp-pm/SDL_ttf/archive/v2.0.18-p0.tar.gz"
    SHA1
    051ef15f3037002bd26414af56529e3bbb89a044
)

hunter_add_version(
    PACKAGE_NAME
    SDL_ttf
    VERSION
    "2.20.1-p0"
    URL
    "https://github.com/drodin/SDL_ttf/archive/refs/heads/hunter-2.20.1.zip"
    SHA1
    6a7a302dcf96e8565312d306f110610c024dd081
)

if(HUNTER_SDL_ttf_VERSION VERSION_GREATER_EQUAL 2.20.1)
hunter_cmake_args(
    SDL_ttf
    CMAKE_ARGS
    SDL2TTF_SAMPLES=OFF
    SDL2TTF_VENDORED=OFF
    SDL2TTF_HARFBUZZ=ON
)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(SDL_ttf)
hunter_download(PACKAGE_NAME SDL_ttf)
