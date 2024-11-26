# Libraries Configuration

# List of libraries to be added (name and relative path)
set(LIBRARY_PAIRS)

# Function to add library pairs
function(add_library_pair LIB_NAME LIB_PATH)
    list(APPEND LIBRARY_PAIRS "${LIB_NAME},${LIB_PATH}")
    set(LIBRARY_PAIRS ${LIBRARY_PAIRS} PARENT_SCOPE)  # Make sure changes are reflected in the parent scope
endfunction()

# Format: <library_name> <source_directory>
# Add more libraries as needed
add_library_pair("library" "src/library")

# Container for all libraries added
set(ALL_LIBRARIES)

# Process the libraries
foreach(pair IN LISTS LIBRARY_PAIRS)
    string(REPLACE "," ";" split_pair ${pair})  # Split the pair string into list

    list(GET split_pair 0 LIB_NAME)  # Get library name from the first element
    list(GET split_pair 1 LIB_PATH)  # Get library path from the second element

    # Full path to the library directory
    set(LIB_DIR "${CMAKE_SOURCE_DIR}/${LIB_PATH}")

    # Check if the library directory exists
    if(EXISTS "${LIB_DIR}")
        # Collect library source files
        file(GLOB LIB_SRC_FILES "${LIB_DIR}/*.cpp")
        
        if(LIB_SRC_FILES)
            # Add the library
            add_library(${LIB_NAME} ${LIB_SRC_FILES})
            message(STATUS "Added library: ${LIB_NAME} from ${LIB_PATH}")
            
            # Store the library in the ALL_LIBRARIES list
            list(APPEND ALL_LIBRARIES ${LIB_NAME})
        else()
            message(WARNING "No source files found for library: ${LIB_NAME} in ${LIB_PATH}")
        endif()
    else()
        message(WARNING "Directory does not exist for library: ${LIB_NAME} in ${LIB_PATH}")
    endif()
endforeach()

set(ALL_LIBRARIES ${ALL_LIBRARIES} CACHE INTERNAL "List of all libraries")