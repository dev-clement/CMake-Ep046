include(AddCatch2)

set(TEST_MAIN "unit_tests")
set(TEST_SOURCE "${CMAKE_CURRENT_SOURCE_DIR}/main.cc")
set(TEST_INCLUDE ".")

add_executable(${TEST_MAIN} ${TEST_SOURCE})
target_include_directories(${TEST_MAIN} PUBLIC ${TEST_INCLUDE})
target_link_libraries(${TEST_MAIN} PRIVATE ${LIBRARY_NAME} Catch2::Catch2WithMain)

include(CTest)
include(Catch)
catch_discover_tests(${TEST_MAIN})
