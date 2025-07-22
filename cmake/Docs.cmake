find_package(Doxygen REQUIRED)

if (DOXYGEN_FOUND)
    add_custom_target(
        docs
        ${DOXYGEN_EXECUTABLE}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/docs
    )
endif()
