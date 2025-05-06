# Makefile

# Compiler and flags
CXX = g++
CXXFLAGS = -Wall

# Libraries
LIBS = -lGL -lGLU -lglut -lGLEW -lm

# Target executable
TARGET = gungame

# Source files
SRC = gungame.cpp

# Default rule
all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LIBS)

# Clean rule
clean:
	rm -f $(TARGET)
