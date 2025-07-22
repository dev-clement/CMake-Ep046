set(SOURCES
    ./src/main.cpp
)

add_executable(${EXECUTABLE_NAME} ${SOURCES})
target_link_libraries(
    ${EXECUTABLE_NAME}
    PUBLIC
    ${LIBRARY_NAME}
    nlohmann_json::nlohmann_json
)
target_include_directories(${EXECUTABLE_NAME} PUBLIC ./include/)
if (${ENABLE_WARNINGS})
    target_set_warnings(
        ${EXECUTABLE_NAME}
        ${ENABLE_WARNINGS}
        ${ENABLE_WARNINGS_AS_ERRORS}
    )
endif()
if (${ENABLE_LTO})
    target_enable_lto(${LIBRARY_NAME} ${ENABLE_LTO})
endif()
