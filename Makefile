OUT_DIR = bin
TARGET = $(OUT_DIR)/nbow

all: $(TARGET)

$(TARGET): main.o
	mkdir -p bin
	gcc -o $(TARGET) main.o -lncurses
	rm main.o

main.o: src/main.c
	gcc -c src/main.c

clean:
	rm -rf $(OUT_DIR)

.PHONY: all clean
