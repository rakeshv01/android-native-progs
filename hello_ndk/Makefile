
BLD_TOOLS=/home/rakesh/nav/andr/andr5_nexus/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin
CC=$(BLD_TOOLS)/arm-linux-androideabi-gcc
CXX=$(BLD_TOOLS)/arm-linux-androideabi-g++

NDK_ROOT=/home/rakesh/nav/andr/android-ndk-r10e
ARCH=arm
CROSS_COMPILE=arm-linux-androideabi-

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
