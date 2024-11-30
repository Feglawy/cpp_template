# Conan Package Manager Setup

The `cmake/Conan.cmake` file is used to configure Conan package management for this project. You can specify the required packages and options for Conan in the following CMake variables:

- **`${PROJECT_NAME}_CONAN_REQUIRES`**: Use this variable to list the packages your project depends on, formatted as `libName/version`.
- **`${PROJECT_NAME}_CONAN_OPTIONS`**: Use this variable to set options for the specified packages.

## Example

To add a package, specify it in the `set` command in the `CMakeLists.txt` file. For instance, to include the `fmt` library version `11.0.2`:

```cmake
set(${PROJECT_NAME}_CONAN_REQUIRES "fmt/11.0.2")
```

You can add multiple libraries by separating them with spaces, e.g.:

```cmake
set(${PROJECT_NAME}_CONAN_REQUIRES "fmt/11.0.2 spdlog/1.11.0")
```

The same for Options:

```cmake
set(${PROJECT_NAME}_CONAN_OPTIONS "fmt:header_only=True spdlog:async=True")
```
