%option noyywrap

%{
    #include"cal.tab.h"
%}

delim[ \t]
ws ({delim}+)
digit [0-9]
digits({digit}+)
letter[a-zA-Z]
letters({letter}+)
us[_]
identifier ({letter|us})({letter|us|digit}*)

%%
{ws} {}
{digits} {yylval=atoi(yytext); return(NUM);}
"+" {return(ADD);}
"-" {return(SUB);}

%%


//if we don't use bison then we need this but as we are using bison so we don't need this
int main()
{
    yylex();
    return 0;
}