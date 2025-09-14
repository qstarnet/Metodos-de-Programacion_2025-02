CC = gcc
CFLAGS = -Wall -g

# Find all source files recursively
SRC_FILES := $(shell find src -type f -name '*.c' -print0 | xargs -0 echo)
OBJ_FILES := $(SRC_FILES:.c=.o)

TARGET = proyecto

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o "$@"

%.o: %.c
	$(CC) $(CFLAGS) -c "$<" -o "$@"

clean:
	rm -f $(OBJ_FILES) $(TARGET)
