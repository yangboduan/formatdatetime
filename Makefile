CPP      = g++
CC       = gcc
CFLAGS   = -std=gnu++0x  
OBJ      = main.o
LINKOBJ  = main.o
BIN      = idatetime
RM       = rm -rf
$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -o $(BIN)    

$(OBJ): main.cpp
	$(CPP) -c main.cpp -o $(OBJ)   $(CFLAGS) 
	
clean: 
	${RM} $(OBJ) $(BIN)

cleanobj:
	${RM} *.o
