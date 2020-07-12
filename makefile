
CC=g++
OPT=-Wall
#OPT=-O3 -Wall

all : main

main : main.o kernel.o
	$(CC) -o main $(OPT) main.o kernel.o

main.o : main.cpp
	$(CC) -c $(OPT) main.cpp

kernel.o : kernel.cpp
	$(CC) -c $(OPT) kernel.cpp


# ======
# Clean
# ======
clean :
	rm -f *.o
realclean : clean
	rm -f main
