vcpkg_check_linkage(ONLY_STATIC_LIBRARY)
vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO auser1337/xNVSE
        REF 4047dabc93520a5d74e112b23129a32f8996cbf3
        SHA512 0
        HEAD_REF master
)
vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()

file(INSTALL "${SOURCE_PATH}" DESTINATION "${CURRENT_PACKAGES_DIR}/debug/lib" FILES_MATCHING PATTERN "*.lib")
file(INSTALL "${SOURCE_PATH}" DESTINATION "${CURRENT_PACKAGES_DIR}/lib" FILES_MATCHING PATTERN "*.lib")
