ID3 = /home/sasl/shared/main3/env/tools/include/
CC = g++ 
CFLAGS= -I -Wall -c 
LDLIBS= -o 
CLIBS = /home/sasl/shared/main3/env/tools/

all : convert.o genre.o list.o id3v2.o install

convert.o: /home/sasl/shared/main3/env/tools/include/id3 
	g++ -I /home/sasl/shared/main3/env/tools/include -DVERSION="\"${VERSION}\"" -c -o convert.o convert.cpp

genre.o: /home/sasl/shared/main3/env/tools/include/id3 
	g++ -I /home/sasl/shared/main3/env/tools/include -DVERSION="\"${VERSION}\"" -c -o genre.o genre.cpp

list.o: /home/sasl/shared/main3/env/tools/include/id3 
	g++ -I /home/sasl/shared/main3/env/tools/include -DVERSION="\"${VERSION}\"" -c -o list.o list.cpp

id3v2.o: /home/sasl/shared/main3/env/tools/include/id3 
	g++ -I /home/sasl/shared/main3/env/tools/include -DVERSION="\"${VERSION}\"" -c -o id3v2.o id3v2.cpp

id3v2: convert.o genre.o list.o id3v2.o /home/sasl/shared/main3/env/tools/include/id3 
	g++ -L/home/sasl/shared/main3/env/tools/lib -Wall -o id3v2 convert.o list.o id3v2.o genre.o -lid3 -lz

clean : 
	rm -f convert.o genre.o list.o id3v2.o 

install : id3v2
	mkdir -p /home/sasl/eleves/main/3672514/TP_solo/bin
	cp id3v2  /home/sasl/eleves/main/3672514/TP_solo/bin
	mkdir /home/sasl/eleves/main/3672514/TP_solo/man
	mkdir /home/sasl/eleves/main/3672514/TP_solo/man/man1
	nroff -man /home/sasl/eleves/main/3672514/TP_solo/EnvDev/tp-solo-Isma04/id3v2-0.1.11/id3v2.1 > /home/sasl/eleves/main/3672514/TP_solo/man/man1/id3v2.1

distclean : 
	rm -f id3v2 id3v2.1 

#8) on créée un alias : alias PATH = "PATH" 
#alias LD_LIBRARY_PATH= "/home/sasl/shared/main3/env/tools/lib"








