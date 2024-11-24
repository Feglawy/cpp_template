# Project configuration

set(PROJECT_NAME "PROJECT_NAME" CACHE STRING "Name of the project")
set(MYPROJECT_VERSION "1.0.0" CACHE STRING "Version of the project")

# C++ Standard
set(MYPROJECT_CXX_STANDARD 17 CACHE STRING "C++ standard for the project")
set(CMAKE_CXX_STANDARD ${MYPROJECT_CXX_STANDARD})
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Option to enable or disable testing
option(ENABLE_TESTING "Enable testing support" OFF)

# Define GoogleTest version
set(GTEST_VERSION "v1.15.2" CACHE STRING "Version of GoogleTest to fetch")


message(STATUS "Project: ${PROJECT_NAME}")
message(STATUS "Version: ${MYPROJECT_VERSION}")
message(STATUS "C++ Standard: ${CMAKE_CXX_STANDARD}")
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")
message(STATUS "Tests enabled: ${ENABLE_TESTING}")