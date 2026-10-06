# Calculator in C++
# Copyright (C) 2025 iTechie 360

A modular C++ console calculator built with clean architecture.

Software Engineer | Jesse Jim
- GitHub: https://github.com/IAmJesseJim
- Portfolio: https://iamjessejim.vercel.app

## Overview
This project is a simple command-line calculator that supports addition, subtraction, multiplication, and division. It uses a modular design with a separate interface and implementation, plus unit tests for validation.

## Features
- Addition
- Subtraction
- Multiplication
- Division
- Division-by-zero error handling
- Unit tests
- Modular OOP design

## Project structure
- `src/calculator/` — application source files
- `include/calculator/` — public calculator interface
- `tests/` — unit tests for calculator logic
- `docs/` — project documentation
- `bin/` — compiled executable output

## Prerequisites
Before setting up the project, make sure you have:
- A C++ compiler with C++17 support (`g++` 11+ recommended)
- Git installed
- A terminal or command prompt

### Install compiler
- macOS: `xcode-select --install`
- Ubuntu/Debian: `sudo apt update && sudo apt install g++`
- Fedora: `sudo dnf install gcc-c++`
- Windows: install MinGW or use MSYS2 with `g++`

## Setup
1. Clone the repository:

```bash
git clone https://github.com/iTechie360/calculator.git
cd calculator
```

2. Create the output folder for compiled binaries:

```bash
mkdir -p bin
```

3. Build the application:

```bash
make build
```

If you prefer to compile manually, run:

```bash
g++ src/calculator/main.cpp src/calculator/calculator.cpp -std=c++17 -Iinclude -o bin/calculator
```

### Windows `.exe` setup
If you want a Windows executable, build it as follows:

```bash
make windows
```

Or compile manually on Windows with MinGW:

```bash
g++ src/calculator/main.cpp src/calculator/calculator.cpp -std=c++17 -Iinclude -o bin/calculator.exe
```

This creates a distributable Windows executable that can be run with:

```powershell
./bin/calculator.exe
```

## Run the app
After building, start the calculator:

```bash
make run
```

Or run the compiled file directly:

```bash
./bin/calculator
```

On Windows:

```powershell
./bin/calculator.exe
```

Example usage:

```text
=== Simple Calculator ===
Enter first number: 10
Enter operator (+,-,*,/): +
Enter second number: 2
12
```

## Run tests
To verify the calculator logic:

```bash
make test
```

Manual test compile command:

```bash
g++ tests/test_calculator.cpp src/calculator/calculator.cpp -std=c++17 -Iinclude -o bin/test
./bin/test
```

## Clean build files
To remove compiled binaries:

```bash
make clean
```

## Notes
This project is intentionally small and beginner-friendly, but it still follows a clean separation between the calculator logic and the console interface. If you want to extend it, the best next steps are adding more operators, a menu loop, or a GUI version.