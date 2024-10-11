cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# GoogleTest setup
include(FetchContent)
set(GTEST_VERSION "v1.15.2")  # Define GoogleTest version as a variable

FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/${GTEST_VERSION}.zip
  DOWNLOAD_EXTRACT_TIMESTAMP true
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE) # For Windows
FetchContent_MakeAvailable(googletest)

# Enable testing
enable_testing()


include(GoogleTest)

# Define the test executable
add_executable(test_main test_main.cc)

# Add include paths for your headers (so you can #include "include.hpp" in tests)
include_directories(${PROJECT_SOURCE_DIR}/../include)

# Link the test executable with GoogleTest
target_link_libraries(test_main GTest::gtest GTest::gtest_main)


# Register tests
add_test(NAME test_main COMMAND test_main)

# Set color output for GoogleTest
set_tests_properties(test_main PROPERTIES ENVIRONMENT "GTEST_COLOR=1")
