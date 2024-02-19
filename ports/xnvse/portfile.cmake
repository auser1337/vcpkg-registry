vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO auser1337/xNVSE
        REF dc07f3765d1abc47bc2ed1dab8816752c0e610d3
        SHA512 0
        HEAD_REF master
)
vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_cmake_config_fixup(PACKAGE_NAME xNVSE CONFIG_PATH lib/cmake)

file(GLOB CMAKE_CONFIGS "${CURRENT_PACKAGES_DIR}/share/xNVSE/xNVSE/*.cmake")
file(INSTALL ${CMAKE_CONFIGS} DESTINATION "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE")
file(INSTALL "${SOURCE_PATH}/cmake/xNVSE.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/xNVSE")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/share/xNVSE/xNVSE")
