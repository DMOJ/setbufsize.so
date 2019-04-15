all: setbufsize32 setbufsize64

setbufsize32:
	BITNESS=32 make setbufsize

setbufsize64:
	BITNESS=64 make setbufsize

setbufsize:
	gcc -Wall -m$(BITNESS) -shared -fPIC -o setbufsize$(BITNESS).so setbufsize.c

clean:
	rm -rf *.so
