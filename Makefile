CC = gcc
CFLAGS = -Wall -g

# Use find and -print0, then convert nulls to spaces for SOURCES
SRC_FILES := $(shell find src/ -name '*.c' -print0 | tr '\0' ' ')
OBJ_FILES := $(SRC_FILES:.c=.o)

TARGET = proyecto

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o "$@"

%.o: %.c
	$(CC) $(CFLAGS) -c "$<" -o "$@"

clean:
	rm -f $(OBJ_FILES) $(TARGET)
