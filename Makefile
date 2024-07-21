TARGET := boot.bin
SOURCE := boot.asm

all: ${TARGET}

${TARGET}: boot.asm
	nasm -f bin -o boot.bin boot.asm

clean:
	rm boot.bin
