.PHONY : all linux mingw clean

all : linux

linux :
	gcc -g -Wall -fPIC --shared -o snapshot.so snapshot.c -I../lua-5.4.8/install/include -L../lua-5.4.8/install/lib -llua

mingw : 
	gcc -g -Wall --shared -o snapshot.dll snapshot.c -I/usr/local/include -L/usr/local/bin -llua53

mingw51 :
	gcc -g -Wall --shared -o snapshot.dll snapshot.c -I/usr/local/include -L/usr/local/bin -llua51

macosx :
	gcc -g -Wall --shared -undefined dynamic_lookup -o snapshot.so snapshot.c

clean :
	rm snapshot.so