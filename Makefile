
CXX = g++
CXXFLAGS = -Wall -g -std=c++11

SRC := $(wildcard *.cpp) 
OBJ := $(patsubst %.cpp,%.o,$(SRC)) 

EXE := leetcode.o 

.PHONY : all clean check help 

help : 
	@echo make all 
	@echo make check
	@echo make clean




%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $^ -o $@

all : $(EXE) 



$(EXE) : $(OBJ) 
	$(CXX) $(CXXFLAGS) $(OBJ) -o $@ 


check : 
	./$(EXE)


clean : 
	@rm -f *.o 


