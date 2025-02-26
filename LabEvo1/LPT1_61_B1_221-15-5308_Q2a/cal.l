%option noyywrap

%{
    //Roll:221-15-5308
%}


%%
"University" {printf("%s -> University\n", yytext);}
"Dhaka" {printf("%s -> University Name\n", yytext);}
"Jahangirnagar" {printf("%s -> University Name\n", yytext);}
"Jagannath" {printf("%s -> University Name\n", yytext);}
"DU" {printf("%s -> University Name Short Form\n", yytext);}
"JU" {printf("%s -> University Name Short Form\n", yytext);}
"JnU" {printf("%s -> University Name Short Form\n", yytext);}
"(" {printf("%s -> LP \n", yytext);}
")" {printf("%s -> RP \n", yytext);}
"!" {printf("%s -> Special Character \n", yytext);}
%%

int main()
{
    yylex();
    return 0;
}