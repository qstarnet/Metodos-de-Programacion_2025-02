CC = gcc
CFLAGS = -Wall -g

# Find all source files recursively
SRC_FILES := $(wildcard src/**/*.c)
OBJ_FILES := $(patsubst %.c,%.o,$(SRC_FILES))

TARGET = proyecto

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o "$@"

%.o: %.c
	$(CC) $(CFLAGS) -c "$<" -o "$@"

clean:
	rm -f $(OBJ_FILES) $(TARGET)
