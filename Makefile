CC=gcc
ARCH=-march=native -mtune=native -m64
STD=-std=gnu17
ERR=-Wall -Wextra -Werror 
OPT=-pipe -s -Ofast -g0 -fauto-inc-dec -mpush-args -mno-red-zone -mstackrealign -fomit-frame-pointer -ffunction-sections -fdata-sections -Wl,--gc-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-unroll-loops -fno-math-errno -fmerge-all-constants -fno-ident -Wl,-z,norelro -Wl,--build-id=none -Wl,--hash-style=gnu
CFLAGS=$(ARCH) $(STD) $(ERR) $(OPT) 

SRC=$(wildcard *.c)
OBJECTS=$(SRC:.c=.o)
TARGET=minifac

all: $(TARGET) 

$(TARGET): $(OBJECTS)
	$(LINK.c) $^ -o $@

run:
	./$(TARGET) 8

clean:
	rm -f $(TARGET) $(OBJECTS)
