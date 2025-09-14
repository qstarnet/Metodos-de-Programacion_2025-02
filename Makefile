CC = gcc
CFLAGS = -Wall -g

# Find all .c files safely, handling spaces
SRC_FILES := $(shell find src/ -name '*.c' -print0 | xargs -0 -I {} echo "{}")
OBJ_FILES := $(SRC_FILES:.c=.o)

TARGET = proyecto

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o $@

# Pattern rule to handle .o files in any directory, safely handling spaces
%.o: %.c
	$(CC) $(CFLAGS) -c "$<" -o "$@"

clean:
	rm -f $(OBJ_FILES) $(TARGET)
