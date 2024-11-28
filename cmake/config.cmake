# Project configuration

set(PROJECT_NAME "PROJECT_NAME" CACHE STRING "Name of the project")
set(MYPROJECT_VERSION "1.0.0" CACHE STRING "Version of the project")
set(MYPROJECT_DESCRIPTION "C++ Project description" CACHE STRING "Description of the project")

# C++ Standard
set(MYPROJECT_CXX_STANDARD 17 CACHE STRING "C++ standard for the project")
set(CMAKE_CXX_STANDARD ${MYPROJECT_CXX_STANDARD})
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Option to enable or disable testing
option(ENABLE_TESTING "Enable testing support" OFF)

# Toggle for building a shared or static library
option(BUILD_SHARED_LIBS "Build using shared libraries" OFF)

option(${PROJECT_NAME}_ENABLE_CONAN "Enable the Conan package manager for this project." OFF)

# Define GoogleTest version
set(GTEST_VERSION "v1.15.2" CACHE STRING "Version of GoogleTest to fetch")


# Set global output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/archive")

message(STATUS "Project: ${PROJECT_NAME}")
message(STATUS "Version: ${MYPROJECT_VERSION}")
message(STATUS "C++ Standard: ${CMAKE_CXX_STANDARD}")
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")
message(STATUS "Libraries SHARED: ${BUILD_SHARED_LIBS}")
message(STATUS "Tests enabled: ${ENABLE_TESTING}")
message(STATUS "Conan enabled: ${${PROJECT_NAME}_ENABLE_CONAN}")

