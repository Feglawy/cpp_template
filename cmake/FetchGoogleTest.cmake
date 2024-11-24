include(FetchContent)

# Use provided version or fallback to default
if(NOT DEFINED GTEST_VERSION)
  set(GTEST_VERSION "v1.15.2")
  message(NOTICE "GTEST version is not specified; it will fallback to: ${GTEST_VERSION}")
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

# Check if the googletest content was successfully made available
if(googletest_POPULATED)
  message(STATUS "GoogleTest version ${GTEST_VERSION} successfully downloaded and made available.")
else()
  message(FATAL_ERROR "Failed to fetch GoogleTest.")
endif()
