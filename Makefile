# Tool definitions
CC ?= gcc
CXX ?= g++

# Settings
SRC_DIR = ./src
TEST_DIR = ./tests
BUILD_DIR = .
NAME = app.elf

# Search path for header files
CFLAGS += -I$(SRC_DIR)/average

# List module source files
CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/average/*.c)

# Compiler flags
CFLAGS += -Wall -Wextra -Werror

# Linker flags
LDFLAGS +=

# Generate names for output object files (*.o)
COBJECTS = $(patsubst %.c,%.o,$(CSOURCES))

# Default rule: build application
.PHONY: all
all: $(NAME)

# Build components
$(COBJECTS) : %.o : %.c
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Build the target application
$(NAME): $(COBJECTS)
	$(CC) $(COBJECTS) -o $(BUILD_DIR)/$(NAME) $(LDFLAGS)

# Remove compiled object files
.PHONY: clean
clean:
	rm -f $(COBJECTS)

# Run unit tests
.PHONY: test
test:
	make -C $(TEST_DIR)

# Clean unit test build artifacts
.PHONY: test_clean
test_clean:
	make -C $(TEST_DIR) clean
