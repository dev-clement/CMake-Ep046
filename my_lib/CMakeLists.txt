set(SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/my_lib.cpp
)

set(HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/include/my_lib.hpp
)

set(LIBRARY_INCLUDES
    ./include/
    ${CMAKE_BINARY_DIR}/configured_files/include
)

set(LIBRARY_LINKED
    cxxopts::cxxopts
    fmt::fmt
    nlohmann_json::nlohmann_json
    spdlog::spdlog
)

add_library(${LIBRARY_NAME} STATIC ${SOURCES} ${HEADERS})
target_include_directories(${LIBRARY_NAME} PUBLIC ${LIBRARY_INCLUDES})
target_link_libraries(${LIBRARY_NAME} PUBLIC ${LIBRARY_LINKED})
if (${ENABLE_WARNINGS})
    target_set_warnings(
        ${LIBRARY_NAME}
        ${ENABLE_WARNINGS}
        ${ENABLE_WARNINGS_AS_ERRORS}
    )
endif()
if (${ENABLE_LTO})
    target_enable_lto(${LIBRARY_NAME} ${ENABLE_LTO})
endif()
target_compile_definitions(${LIBRARY_NAME} PUBLIC PRINTER_ACTIVE)
