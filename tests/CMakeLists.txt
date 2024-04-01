add_executable(
    dummy_test
    dummy_test.cpp
)

target_include_directories(
    dummy_test
    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

target_link_libraries(
    dummy_test
    GTest::gtest_main
)

include(GoogleTest)

find_program(MEMORYCHECK_COMMAND valgrind)

add_test(NAME dummy_test COMMAND dummy_test)

if(MEMORYCHECK_COMMAND)
    add_test(NAME dummy_test_memcheck COMMAND ${MEMORYCHECK_COMMAND} --trace-children=yes --leak-check=full ./dummy_test)

endif()