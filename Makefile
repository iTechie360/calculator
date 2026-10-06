CXX := g++
CXXFLAGS := -std=c++17 -Iinclude -Wall -Wextra -pedantic
BIN_DIR := bin
APP := $(BIN_DIR)/calculator
APP_EXE := $(BIN_DIR)/calculator.exe
TEST_APP := $(BIN_DIR)/test
TEST_APP_EXE := $(BIN_DIR)/test.exe

all: build

build: $(APP)

windows: $(APP_EXE)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(APP): src/calculator/main.cpp src/calculator/calculator.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) src/calculator/main.cpp src/calculator/calculator.cpp -o $(APP)

$(APP_EXE): src/calculator/main.cpp src/calculator/calculator.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) src/calculator/main.cpp src/calculator/calculator.cpp -o $(APP_EXE)

run: $(APP)
	./$(APP)

run-windows: $(APP_EXE)
	./$(APP_EXE)

test: $(TEST_APP)
	./$(TEST_APP)

$(TEST_APP): tests/test_calculator.cpp src/calculator/calculator.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) tests/test_calculator.cpp src/calculator/calculator.cpp -o $(TEST_APP)

$(TEST_APP_EXE): tests/test_calculator.cpp src/calculator/calculator.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) tests/test_calculator.cpp src/calculator/calculator.cpp -o $(TEST_APP_EXE)

clean:
	rm -rf $(BIN_DIR)

.PHONY: all build windows run run-windows test clean
