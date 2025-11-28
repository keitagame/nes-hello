CC65 = cl65
CFLAGS = -t nes -C nes.cfg

all: main.nes

main.nes: main.c nes.cfg startup.asm
	$(CC65) $(CFLAGS) -o main.nes main.c startup.asm
