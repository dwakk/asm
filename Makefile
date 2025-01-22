NASM = nasm
NASM_FLAGS = -f elf64
CC = gcc
CFLAGS = 
SRC_DIR = ./src
OBJ_DIR = ./obj
BIN_DIR = ./bin

.PHONY: all
all: help

%:
	@echo "Building target: $@"
	@mkdir -p $(OBJ_DIR) $(BIN_DIR)
	$(NASM) $(NASM_FLAGS) $(SRC_DIR)/$@/$@.asm -o $(OBJ_DIR)/$@.o
	$(CC) $(CFLAGS) -o $(BIN_DIR)/$@ $(SRC_DIR)/$@/$@.c $(OBJ_DIR)/$@.o

.PHONY: clean
clean:
	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/*

.PHONY: help
help:
	@echo "Usage:"
	@echo "  make <target>   Build the specified target (e.g., atoi, itoa)"
	@echo "  make clean      Remove all generated files"
