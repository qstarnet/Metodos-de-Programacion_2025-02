
CC = gcc
CFLAGS = -Wall -g

# Recursively find all .c files in src/
SRC_FILES := $(shell find src -type f -name "*.c")
OBJ_FILES := $(SRC_FILES:.c=.o)

TARGET = metodos

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o "$@"

%.o: %.c
	$(CC) $(CFLAGS) -c "$<" -o "$@"

clean:
	rm -f $(OBJ_FILES) "$@"