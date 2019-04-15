CC=gcc
CFLAGS=-Wall -shared -fPIC

all: setbufsize32.so setbufsize64.so

setbufsize32.so: setbufsize.c
	$(CC) -m32 $(CFLAGS) -o $@ $^

setbufsize64.so: setbufsize.c
	$(CC) -m64 $(CFLAGS) -o $@ $^

clean:
	rm -f *.so *.o
