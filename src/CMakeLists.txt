# Collect source files
file(GLOB SRC_FILES 
    "${CMAKE_SOURCE_DIR}/src/*.cpp" 
)

# Create an executable for the main program
add_executable(main "${CMAKE_SOURCE_DIR}/src/main.cpp" ${SRC_FILES})

# Link all libraries to the main executable
if(ALL_LIBRARIES)
    target_link_libraries(main ${ALL_LIBRARIES})
endif()