include(FetchContent)
include(cmake/config.cmake)

# Use provided version or fallback to default
if(NOT DEFINED GTEST_VERSION)
    set(GTEST_VERSION "v1.15.2")
endif()

FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/${GTEST_VERSION}.zip
  DOWNLOAD_EXTRACT_TIMESTAMP true
)

# For Windows, force shared CRT
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

# Fetch GoogleTest
FetchContent_MakeAvailable(googletest)
