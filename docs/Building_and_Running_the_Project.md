# Building and Running the Project

## Prerequisites

Before proceeding, ensure that you have the following installed on your machine:

- CMake: Make sure you have installed CMake.
- A C++ Compiler: Make sure you have a C++ compiler like g++.
- A Build Generator: Like Ninja.

## 1. Configure the Project with CMake

This will configure the project and generate the necessary build files.

```bash
cmake -S . -B build -G "Your_build_genrator"
```

Your build genrator can either be Ninja, Visual Studio, ..., etc.  
Type in termainl `cmake --help` to see what genrators are available.

## 2. Build the Project

After configuring the project, build it using the following command:

To build the project in Debug mode:

```bash
cmake --build build --config Debug
```

To build the project in Release mode:

```bash
cmake --build build --config Release
```

## 3. Run the project

On Windows:

```bash
.\build\bin\main.exe
```

On Linux:

```bash
./build/bin/main
```

## 3.2 Alternative: Build and Run in One Step

```bash
cmake --build build --config Debug --target run
```

## 4. Clean build

```bash
cmake --build build --target clean
```
