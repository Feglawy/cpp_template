if(${PROJECT_NAME}_ENABLE_CONAN)
  
  #
  # Setup Conan requires and options here:
  #

  # Add your Requires as libName/version libName/version here is fmt as example 
  # set(${PROJECT_NAME}_CONAN_REQUIRES "fmt/11.0.2")

  set(${PROJECT_NAME}_CONAN_REQUIRES "")
  set(${PROJECT_NAME}_CONAN_OPTIONS "")

  #
  # If `conan.cmake` (from https://github.com/conan-io/cmake-conan) does not exist, download it.
  #
  if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/0.18.1/conan.cmake"
                "${CMAKE_BINARY_DIR}/conan.cmake"
                TLS_VERIFY ON)
    message(STATUS "Cmake-Conan downloaded succesfully.")
  endif()

  include(${CMAKE_BINARY_DIR}/conan.cmake)

  conan_cmake_configure(
    REQUIRES 
    ${${PROJECT_NAME}_CONAN_REQUIRES}
    GENERATORS 
    CMakeToolchain CMakeDeps
  )
  conan_cmake_autodetect(settings)

  conan_cmake_install(PATH_OR_REFERENCE .
                      BUILD missing
                      REMOTE conancenter
                      SETTINGS ${settings}
  )
  message("Conan is setup and all requires have been installed.")
endif()