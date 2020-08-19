include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    fluidsynth
    VERSION
    2.2.9
    URL
    "https://github.com/FluidSynth/fluidsynth/archive/v2.2.9.tar.gz"
    SHA1
    f2f83cea9676525ce36f972a650e54ebef870ab8
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(fluidsynth)
hunter_download(PACKAGE_NAME fluidsynth)
