# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_add_version(
        PACKAGE_NAME
        libmad
        VERSION
        "0.15.1b"
        URL
        "https://sourceforge.net/projects/mad/files/libmad/0.15.1b/libmad-0.15.1b.tar.gz"
        SHA1
        cac19cd00e1a907f3150cc040ccc077783496d76
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libmad)
hunter_download(PACKAGE_NAME libmad)
