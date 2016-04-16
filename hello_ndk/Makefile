
NDK_ROOT=/home/rakesh/nav/andr/android-ndk-r10e
ARCH=arm
CROSS_COMPILE=arm-linux-androideabi-

BLD_TOOLS=$(NDK_ROOT)/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin

CC=$(BLD_TOOLS)/arm-linux-androideabi-gcc
CXX=$(BLD_TOOLS)/arm-linux-androideabi-g++

CFLAGS=-I$(NDK_ROOT)/platforms/android-19/arch-arm/usr/include -g -c -Wall

LDFLAGS=--sysroot=$(NDK_ROOT)/platforms/android-19/arch-arm/ -lc

SOURCES=hello.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS)  -o $@
.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean: 
	rm *.o hello
