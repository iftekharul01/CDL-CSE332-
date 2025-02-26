main:
	gcc -o try try.c
	gcc -E try.c > try.i
	gcc -S -masm=intel try.i
	as -o try.o try.s
	objdump -M intel -d try.o > try.dump
	gcc -c -o try1.o try.c
	objdump -M intel -d try1.o > try1.dump