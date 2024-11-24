# Libraries Configuration

# List of libraries to be added (name and relative path)
# Format: <library_name> <source_directory>
set(PROJECT_LIBRARIES
    "library" "src/library"
    # Add more libraries as needed
)

# Iterate over the libraries and add them
list(LENGTH PROJECT_LIBRARIES LIBRARIES_COUNT)
math(EXPR LIBRARIES_COUNT "${LIBRARIES_COUNT} / 2") # Each library has a name and path

set(ALL_LIBRARIES "") # Container for all libraries added

foreach(idx RANGE 0 [expr LIBRARIES_COUNT - 1])
    math(EXPR name_idx "${idx} * 2")
    math(EXPR path_idx "${name_idx} + 1")

    # Extract the library name and path
    list(GET PROJECT_LIBRARIES ${name_idx} LIB_NAME)
    list(GET PROJECT_LIBRARIES ${path_idx} LIB_PATH)

    # Collect library source files
    file(GLOB LIB_SRC_FILES "${CMAKE_SOURCE_DIR}/${LIB_PATH}/*.cpp")

    if(LIB_SRC_FILES)
        # Add the library
        add_library(${LIB_NAME} ${LIB_SRC_FILES})
        set(ALL_LIBRARIES ${ALL_LIBRARIES} ${LIB_NAME})
    endif()
endforeach()
