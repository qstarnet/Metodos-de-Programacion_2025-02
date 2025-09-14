CC = gcc
CFLAGS = -Wall -g

# Find all source files recursively
SRC_FILES := $(shell find src -type f -name '*.c' -print0 | xargs -0 echo)
OBJ_FILES := $(SRC_FILES:.c=.o)

TARGET = proyecto

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) $(OBJ_FILES) -o $@

$(OBJ_FILES):
	for src in $(SOURCES); do \
	  obj="$$src"; obj=$${obj%.c}.o; \
	  $(CC) $(CFLAGS) -c "$$src" -o "$$obj"; \
	done

clean:
	rm -f $(OBJ_FILES) $(TARGET)
