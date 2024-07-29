TARGET := boot.bin
SOURCE := src/boot.asm

all: ${TARGET}

${TARGET}: ${SOURCE}
	nasm -f bin -o ${TARGET} ${SOURCE}

clean:
	rm ${TARGET}
