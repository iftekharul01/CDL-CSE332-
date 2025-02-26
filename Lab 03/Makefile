input=input.txt
output=output.txt

main: cal.l
	flex cal.l
	gcc lex.yy.c
	a < $(input) > $(output)

main2: cal.y cal.l
	bison -d cal.y
	flex cal.l
	gcc cal.tab.c lex.yy.c
	a < $(input) > $(output)
	@cat $(output)