CFLAGS=-O2
all: fastpdf

fastpdf: fast.c
	g++ fast.c -o fastpdf

clean:
	rm -f fastpdf
