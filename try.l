%option noyywrap

%{

%}

digit [0-9]
digits({digit}+)

%%
{digits} {printf("%s Number\n",yytext);}
"+" {printf("%s Its ADD\n",yytext);}
"-" {printf("%s Its SUB\n",yytext);}

%%

int main()
{
    yylex();
    return 0;
}