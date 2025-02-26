input = input.txt
output = output.txt

main: try.l
	flex try.l
	gcc lex.yy.c
	a < $(input) > $(output)
	@cat $(output)