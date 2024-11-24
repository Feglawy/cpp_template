# Project configuration

set(PROJECT_NAME "PROJECT_NAME" CACHE STRING "Name of the project")
set(MYPROJECT_VERSION "1.0.0" CACHE STRING "Version of the project")

# C++ Standard
set(MYPROJECT_CXX_STANDARD 14 CACHE STRING "C++ standard for the project")
set(CMAKE_CXX_STANDARD ${MYPROJECT_CXX_STANDARD})
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Option to enable or disable testing
option(ENABLE_TESTING "Enable testing support" ON)

# Define GoogleTest version
set(GTEST_VERSION "v1.15.2" CACHE STRING "Version of GoogleTest to fetch")


