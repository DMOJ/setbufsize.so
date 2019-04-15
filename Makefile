all: setbufsize32 setbufsize64

setbufsize32:
	gcc -Wall -m32 -shared -fPIC -o setbufsize32.so setbufsize.c 

setbufsize64:
	gcc -Wall -m64 -shared -fPIC -o setbufsize64.so setbufsize.c 

clean:
	rm -rf *.so
