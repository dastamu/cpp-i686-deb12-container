# MAKEFILE

# Wybór kompilatora i flag
CXX      ?= g++
CXXFLAGS ?= -Os -Wall
LDFLAGS  := -static -s

# Automatyczne wyszukiwanie wszystkich plików źródłowych .cpp w katalogu
SRCS     := $(wildcard *.cpp)
OBJS     := $(SRCS:.cpp=.o)
TARGET   := hello

.PHONY: all clean


# Domyślna reguła: zbudowanie programu
all: $(TARGET)

# Łączenie plików obiektowych w plik wykonywalny
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

# Kompilacja plików .cpp do .o
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Czyszczenie plików tymczasowych
clean:
	rm -f $(OBJS) $(TARGET)
  
	# <--- TAB
#END