# Libraries Configuration
include(${CMAKE_SOURCE_DIR}/cmake/Utils.cmake)

# List of libraries to be added (name and relative path)
set(LIBRARY_PAIRS)


# Format: <library_name> <source_directory>
# Add more libraries as needed
add_library_pair("library" "src/library")

process_libraries()