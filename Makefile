CXX = g++
CXXFLAGS = -Wall -std=c++11 -I./include
SRC_DIR = src             
OBJ_DIR = obj             
LIBRARY = libgoldilocks.a 

SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

all: $(LIBRARY)

$(LIBRARY): $(OBJECTS)
	ar rcs $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(LIBRARY)

.PHONY: all clean
