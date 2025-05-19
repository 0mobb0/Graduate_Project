utils = $(wildcard ./libcache/cacheutils.c ./libpmu/pmu.c)
CC=gcc 

SOURCES := $(wildcard ./src/*.c)
BINARIES := $(SOURCES:%.c=%)

all:dummy length

dummy:
	$(CC) -c ./src/dummy.s -o ./src/dummy.o

length: 
	$(CC) -o ./src/length ./src/length.c  ./src/dummy.o  $(utils) -lrt

.PHONY: clean length dummy

clean:
	rm -f $(BINARIES) ./src/*.o *.s