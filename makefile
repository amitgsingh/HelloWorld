CC=gcc
CFLAGS= -std=c99 -ggdb -Wall -I.
DEPS = hellomake.h
OBJ = hellomake.o hellofunc.o 

$(OBJ): $(ODIR)/%.o: src/%.c $(DEPS)
    $(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
