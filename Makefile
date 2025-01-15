PROG    = RatAsm RatExe
CXX     = g++ -std=c++17
LD      = g++ -g
CXXFLAGS = -O -g -Wall

all:    $(PROG)

clean:
	rm -rf *.o *.bin *.dSYM $(PROG)

run:    ratforth.bin RatExe
	./RatExe ratforth.bin

%.bin:  %.asm RatAsm
	./RatAsm $< $@
