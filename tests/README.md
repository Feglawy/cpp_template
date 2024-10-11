# Tests Directory

This directory contains the test files for the project. It is structured to facilitate unit testing of the libraries and components developed within the project using GoogleTest.

## Directory Structure

### CMakeLists.txt

The `CMakeLists.txt` file in this directory configures the testing framework and the test executables. Here’s a brief overview of its contents:

- **Includes GoogleTest**: This setup uses `FetchContent` to download and link GoogleTest.
- **Defines the Test Executable**: The executable named `test_main` is created, which includes the main test file (`test_main.cpp`).
- **Links to the Main Library**: The test executable is linked with the main library (`my_library`) and GoogleTest.
- **Automatic Test Discovery**: The `gtest_discover_tests` function is used to automatically discover test cases within the test executable.

### test_main.cc

The `test_main.cc` file contains the actual test cases. Here’s a brief overview of its contents:

- **Includes the GoogleTest Header**: The file begins with including the GoogleTest library to enable the use of its testing functionalities.
- **Includes Your Library Headers**: Any headers from the library being tested should be included here, allowing access to the classes and functions under test.
- **Defines Test Cases**: Test cases are defined using `TEST` macros, which specify the name of the test and the logic for testing functionality.
- **Main Function**: The `main` function initializes GoogleTest and runs all tests.

### How to Set Up Testing

1. **Ensure GoogleTest is Configured**: The main project should have GoogleTest configured properly in its `CMakeLists.txt`. This is typically done using `FetchContent`.

2. **Add Test Cases**: Write your test cases in `test_main.cc` or create additional test files as needed. Use the `TEST` macro to define your tests.

   ```cpp
   #include <gtest/gtest.h>
   #include "MyClass.hpp"  // Include the header from your library

   TEST(MyClassTest, AddFunction) {
       MyClass obj;
       EXPECT_EQ(obj.add(2, 3), 5);
   }
   ```

3. **Add test file to cmake**: `add_executable(test_name filename.cc)` replace the `test_name` and `filename.cc` as needed.
4. **Link the executable with the libraries**: `target_link_libraries(test_name GTest::gtest GTest::gtest_main your_library)` replace `test_name` and `your_library` with the one you made in the project's `/CMakeLists.txt`.
5. **Add tests**: `add_test(NAME test_name COMMAND test_name)`

## Conclusion

This testing setup allows you to ensure the correctness of your code through unit tests. Modify the CMakeLists.txt and test files as necessary to adapt to your project’s requirements.
