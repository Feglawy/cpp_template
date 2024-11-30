# CMake Configuration

Here is a breakdown of the `cmake/config.cmake`:

```cmake
# Project configuration

set(PROJECT_NAME "PROJECT_NAME" CACHE STRING "Name of the project")
set(MYPROJECT_VERSION "1.0.0" CACHE STRING "Version of the project")

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

```

## Key Points

- `set(PROJECT_NAME  "PROJECT_NAME")` : Set your project name.
- `option(ENABLE_TESTING ON)` : Set if you will use tests or not `ON` for true `OFF` for false.
- `option(BUILD_SHARED_LIBS "Build using shared libraries" OFF)`: Toggle built libraries to be shared or static
- `option(${PROJECT_NAME}_ENABLE_CONAN OFF)` : Toggles Conan package manager

## Customizing the Project

### Add More Libraries

You can add other librarys to your project in the `cmake/Libraries.cmake` file you just have to write library name and its path in or change its name

Format: <library_name> <source_directory>

```cmake
    add_library_pair("library" "src/library")
```
