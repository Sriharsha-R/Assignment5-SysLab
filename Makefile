CC = gcc
CXX = g++
CFLAGS = -pthread
CXXFLAGS = -std=c++17

TARGETS = $(patsubst %.cpp,%,$(wildcard *.cpp)) $(patsubst %.c,%,$(wildcard *.c))

all: $(TARGETS)

%: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

%: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(TARGETS)
