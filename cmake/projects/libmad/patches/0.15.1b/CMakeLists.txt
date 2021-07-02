cmake_minimum_required(VERSION 3.2)

project(libmad VERSION 0.15.1)

set(SOURCES
    bit.c
    bit.h
    config.h
    decoder.c
    decoder.h
    fixed.c
    fixed.h
    frame.c
    frame.h
    global.h
    huffman.c
    huffman.h
    layer12.c
    layer12.h
    layer3.c
    layer3.h
    mad.h
    stream.c
    stream.h
    synth.c
    synth.h
    timer.c
    timer.h
    version.c
    version.h
)

include_directories(
    msvc++
)

add_library(
    mad
    ${SOURCES}
)

target_compile_definitions(mad
    PRIVATE _LIB _MBCS ASO_ZEROCHECK HAVE_CONFIG_H FPM_DEFAULT
    PRIVATE _CRT_SECURE_NO_WARNINGS
)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set(config_install_dir "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}")
set(generated_dir "${CMAKE_CURRENT_BINARY_DIR}/generated")
set(version_config "${generated_dir}/${PROJECT_NAME}ConfigVersion.cmake")
set(project_config "${generated_dir}/${PROJECT_NAME}Config.cmake")
set(targets_export_name "${PROJECT_NAME}Targets")
set(namespace "${PROJECT_NAME}::")

install(TARGETS mad
    EXPORT "${targets_export_name}"
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

install(
    FILES ${CMAKE_SOURCE_DIR}/mad.h
    DESTINATION ${CMAKE_INSTALL_FULL_INCLUDEDIR}
)

write_basic_package_version_file(
    "${version_config}" COMPATIBILITY SameMajorVersion
)

configure_package_config_file(
    "cmake/template/Config.cmake.in"
    "${project_config}"
    INSTALL_DESTINATION "${config_install_dir}"
)

install(
    FILES "${project_config}" "${version_config}"
    DESTINATION "${config_install_dir}"
)

install(
    EXPORT "${targets_export_name}"
    NAMESPACE "${namespace}"
    DESTINATION "${config_install_dir}"
)
