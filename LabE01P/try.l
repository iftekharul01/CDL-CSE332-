%option noyywrap

%{

%}

digit [0-9]
delim [ \t]
ws ({delim}+)
digits ({digit}+)

%%
{ws} {}
{digits} {printf("%s NUMBER\n",yytext);}
"+" {printf("+ ADD\n",yytext);}
%%

int main()
{
    yylex();
    return 0;
}