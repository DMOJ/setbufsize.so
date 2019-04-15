all: setbufsize32.so setbufsize64.so

setbufsize32.so:
	BITNESS=32 make setbufsize

setbufsize64.so:
	BITNESS=64 make setbufsize

setbufsize:
	gcc -Wall -m$(BITNESS) -shared -fPIC -o setbufsize$(BITNESS).so setbufsize.c

clean:
	rm -rf *.so
