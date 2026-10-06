CXX := g++
CXXFLAGS := -std=c++17 -Iinclude -Wall -Wextra -pedantic
BIN_DIR := bin
APP := $(BIN_DIR)/calculator
TEST_APP := $(BIN_DIR)/test

all: build

build: $(APP)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(APP): src/calculator/main.cpp src/calculator/calculator.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) src/calculator/main.cpp src/calculator/calculator.cpp -o $(APP)

run: $(APP)
	./$(APP)

test: $(TEST_APP)
	./$(TEST_APP)

$(TEST_APP): tests/test_calculator.cpp src/calculator/calculator.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) tests/test_calculator.cpp src/calculator/calculator.cpp -o $(TEST_APP)

clean:
	rm -rf $(BIN_DIR)

.PHONY: all build run test clean
