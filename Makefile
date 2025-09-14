CC = gcc
CFLAGS = -Wall -g

# Find all .c files safely, handling spaces
SOURCES := $(shell find src/ -name '*.c' -print0 | xargs -0 echo)
OBJ_FILES := $(patsubst %.c,%.o,$(SRC_FILES))

TARGET = proyecto

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_FILES) $(TARGET)
