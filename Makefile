INCLUDE = -I./base
INCLUDE += -I./programmar
INCLUDE += -I./scientific

SRC = $(wildcard *.c)
SRC += $(wildcard ./base/*.c)
SRC += $(wildcard ./programmar/*.c)
SRC += $(wildcard ./scientific/*.c)
OBJ = $(SRC:.c=.o)

.PHONY: clean

calc: $(OBJ)
		gcc -o $@ $(OBJ) -lm

%.o: %.c
		gcc -c $< -o $@ $(INCLUDE)

clean:
		rm $(OBJ)
		rm calc
