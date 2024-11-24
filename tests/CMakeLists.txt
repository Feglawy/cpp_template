include(../cmake/config.cmake)
include(../cmake/Libraries.cmake)

include(GoogleTest)

# Collect test source files
file(GLOB TEST_FILES "${CMAKE_CURRENT_SOURCE_DIR}/*.cc")

# Define the test executable
add_executable(${PROJECT_NAME}_tests ${TEST_FILES})

# Add include paths for your headers
target_include_directories(${PROJECT_NAME}_tests PRIVATE ${CMAKE_SOURCE_DIR}/include)

# Link test executable with GoogleTest and project library
target_link_libraries(${PROJECT_NAME}_tests PRIVATE ${ALL_LIBRARIES} GTest::gtest GTest::gtest_main)

# Automatically discover and register tests
gtest_discover_tests(${PROJECT_NAME}_tests
    PROPERTIES ENVIRONMENT "GTEST_COLOR=1"
)