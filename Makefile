CC = gcc
SRCS = unit_tests_BinaryHeap.hpp unit_tests_PriorityQueue.hpp unit_tests_BinarySearchTree.hpp BinarySearchTree.hpp PriorityQueue.hpp BinaryHeap.hpp main.cpp menu.cpp Pair.hpp Complex.hpp Student.hpp
CFLAGS = -g -Wall
LDFLAGS = -lstdc++
OBJS = $(SRCS: .cpp = .o)
EXE = lab4

all: $(SRCS) $(EXE)

$(EXE): $(OBJS)
	clear
	$(CC) $(OBJS) -o $@ $(LDFLAGS)
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf $(OBJS) $(EXE)