CC = gcc
CFLAGS = -Wall -g

SOURCES := $(shell find src/ -type f -name '*.c' -print0 | xargs -0 echo)
OBJ_FILES := $(SOURCES:.c=.o)

TARGET = proyecto

$(info SOURCES=$(SOURCES))
$(info OBJ_FILES=$(OBJ_FILES))

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o "$@" -lm

%.o: %.c
	$(CC) $(CFLAGS) -c "$<" -o "$@"

clean:
	rm -f $(OBJ_FILES) $(TARGET)
