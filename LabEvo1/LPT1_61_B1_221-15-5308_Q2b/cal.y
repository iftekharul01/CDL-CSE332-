%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token <str> University University_Name University_Name_Short_Form LP RP Special_Character
%start statements

%%


%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(){
    yyparse();
    return 0;
}