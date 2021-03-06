CXX=g++
OBJECTS=main.o
DIR=$(shell pwd)
OBJDIR=$(DIR)/obj
SRCDIR=$(DIR)/src
HEADERDIR=$(SRCDIR)/header
CFLAGS_BASE=-std=c++11 -I$(HEADERDIR) -march=native -fopenmp
CFLAGS=$(CFLAGS_BASE)
LDFLAGS_BASE= -fopenmp
LDFLAGS = $(LDFLAGS_BASE)

_DEPS=chess_board.h piece.h game_handler.h player.h human_player.h ai_player.h move.h
DEPS=$(patsubst %,$(HEADERDIR)/%,$(_DEPS))

_OBJS=main.o chess_board.o piece.o game_handler.o human_player.o ai_player.o move.o
OBJS=$(patsubst %,$(OBJDIR)/%, $(_OBJS))

default: CFLAGS += -O3
default: main

debug: CFLAGS += -D DEBUG -g -Wall -O0
debug: main

main: $(OBJS)
	$(CXX) -o AIProject $(OBJS) $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp $(DEPS)
	$(CXX) $(CFLAGS) -c -o $@ $<

profile: CFLAGS += -O3 -pg -fprofile-generate
profile: LDFLAGS += -pg -fprofile-generate
profile: main

optbin: cleanobj
optbin: CFLAGS += -O3 -fprofile-use -fprofile-correction
optbin: main

cleanobj:
	rm -rf $(OBJDIR)/*.o

clean: 
	rm -rf $(OBJDIR)/* gmon.out AIProject
