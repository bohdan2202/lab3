CC=g++
CFLAGS=-c -Wall
all: mylab3 mylib.a
mylab3: mylab3.o mylib.a
	$(CC) mylab3.o mylib.a
note.o: note.cpp note.h
	$(CC) $(CFLAGS) note.cpp
mylab3.o: mylab3.cpp
	$(CC) $(CFLAGS) mylab3.cpp
mylib.a: note.o
	ar -rcs mylib.a note.o
clean:
	rm -rf *.o mylab3