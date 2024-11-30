# C++ Project Template

This project template is designed to help you set up a C++ 17 project using CMake. The template is minimal yet flexible, allowing you to add libraries and expand your project as needed.

## Project Structure

The structure of the project is as follows:

```structure
📁Project
└── 📁build                     # Build directory created after running CMake (contains generated build files)
└── 📁cmake                     # Directory for CMake scripts
    └── Conan.cmake             # Script for managing external dependencies using Conan package manager
    └── config.cmake            # CMake configuration settings (e.g., compiler flags, environment variables)
    └── FetchGoogleTest.cmake   # CMake script to fetch GoogleTest dependency
    └── Libraries.cmake         # CMake script for handling libraries configurations
└── 📁data                      # Directory for storing data files and other resources
└── 📁docs                      # Documentation files for the project
└── 📁include                   # Directory for header files
    └── 📁library               # Optional subdirectory for library header files
└── conf.hpp                    # Example header file, potentially for project-wide configurations
└── 📁src                       # Directory for source code files
    └── 📁library               # Optional subdirectory for library source files
    └── CMakeLists.txt          # CMake configuration for building the source code files
    └── main.cpp                # Main program file where the entry point (main function) resides
└── 📁tests                     # Directory for test files
    └── CMakeLists.txt          # CMake configuration for compiling and running tests
    └── test_main.cc            # Main test file for the project, typically where tests are executed
└── CMAKELISTS.txt              # Top-level CMake build configuration file for the project
```

### Key Folders

- `include/`: Contains all your header files (.hpp). You can organize headers for different libraries into subdirectories within include/library/ if necessary.

- `src/`: Contains all your source files (.cpp). You can organize source files for different libraries into subdirectories within src/library/
- `cmake/`: This directory can store additional CMake configuration files.
- `tests/`: (Optional) Contains all test files.
- `data/` : Store resources and data files in this direcotry.

## How to Configure and Build the Project

See **[Building and Running the project](./docs/Building_and_Running_the_Project.md)**

> [!NOTE]
> You can use cmake extension in vscode for building and running the project it gets the job done.

## To customize the CMake Configurations

See **[Configure CMake for your project](./docs/CMake_Configuration.md)**

### Handling your libraries

See **[adding libraries](./docs/CMake_Configuration.md#add-more-libraries)**
