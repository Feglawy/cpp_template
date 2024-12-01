include(${CMAKE_SOURCE_DIR}/cmake/Utils.cmake)

# Collect source files

# # Glob all .cpp files
glob_source_files_exclude_main(SRC_FILES "${CMAKE_SOURCE_DIR}/src")

# Create an executable for the main program
add_executable(main "${CMAKE_SOURCE_DIR}/src/main.cpp" ${SRC_FILES})

# Link all libraries to the main executable
if(ALL_LIBRARIES)
    target_link_libraries(main ${ALL_LIBRARIES})
endif()

add_custom_target(copy_data ALL
    COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/data
        $<TARGET_FILE_DIR:main>/data
        COMMENT "Copying data directory to build directory"
)

add_custom_target(run
    COMMAND ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/main
    DEPENDS main
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)
