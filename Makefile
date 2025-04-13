CXX := g++
AR := ar
CXXFLAGS := -std=c++11 -Iinclude
LDFLAGS := 
SRC := src/goldilocks.cpp
OBJ := $(SRC:.cpp=.o)
LIB := libgoldilocks.a

all: $(LIB)

$(LIB): $(OBJ)
	$(AR) rcs $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

test: all test.cpp
	$(CXX) $(CXXFLAGS) test.cpp -L. -lgoldilocks -o test
	@echo "\n"
	./test

clean:
	rm -f $(OBJ) $(LIB) test