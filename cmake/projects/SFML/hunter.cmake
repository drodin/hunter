include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    SFML
    VERSION
    2.5.1-p2
    URL
    "https://github.com/drodin/SFML/archive/fcff37b.tar.gz"
    SHA1
    8d2a517b6dcc596717d5b921a35a39a0ca96e077
)

hunter_add_version(
    PACKAGE_NAME
    SFML
    VERSION
    2.5.1-gl4es-p2
    URL
    "https://github.com/drodin/SFML/archive/e15d37f.tar.gz"
    SHA1
    8b3c9695e58e2b3684aeb94b6fffac2e7deb1655
)

hunter_add_version(
    PACKAGE_NAME
    SFML
    VERSION
    2.5.1-p1
    URL
    "https://github.com/drodin/SFML/archive/04e3629.tar.gz"
    SHA1
    7ffe57f3a92ec8358f19da13796cf5a2110dedbe
)

hunter_add_version(
    PACKAGE_NAME
    SFML
    VERSION
    2.5.1-gl4es-p1
    URL
    "https://github.com/drodin/SFML/archive/2adda56.tar.gz"
    SHA1
    bc2b4feb4d8076cedbd4527da9324dcb533c249b
)

hunter_add_version(
    PACKAGE_NAME
    SFML
    VERSION
    2.5.1-p0
    URL
    "https://github.com/cpp-pm/SFML/archive/2.5.1-p0.tar.gz"
    SHA1
    82b5aaf36717793bda31498a1630114296a99c68
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(SFML)
hunter_download(PACKAGE_NAME SFML)
