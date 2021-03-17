all: teste

teste: cliente.o avl.o
	gcc -o teste cliente.o

cliente.o: cliente.c avl.h
	gcc -c cliente.c -Wall

avl.o: avl.c avl.h
	gcc -c avl.c -Wall

clean:
	rm cliente.o avl.o teste
