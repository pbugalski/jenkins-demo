all: hello

hello: main.o
	gcc -o hello main.o

main.o: main.c
	gcc -funsigned-char -c main.c

clean:
	rm -f *.o hello

