#  Bases Makefile
# (C) 2014 Donald Perkovich. All rights reserved.
CC = g++
CFLAGS = -Wall -pedantic --std=c++11

OUTPUT_DIR = output

SRC = bases.cpp
OBJ = bases.o
EXE = bases

all : $(EXE)

$(EXE) : $(SRC)
	$(CC) $(CFLAGS) -O2 $(SRC) -o $(EXE)

debug : $(SRC)
	$(CC) $(CFLAGS) -g $(SRC) -o $(EXE)

test : $(EXE)
	@echo "=== Running Bases Tests"
	@./$(EXE)
	@echo "=== Done"

.PHONY : clean
clean:
	rm -f *.o $(EXE)

bases.o: bases.cpp

# End

