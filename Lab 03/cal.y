%{
     #include<stdio.h>
     void yyerror(char *s);
     int yylex();
%}

%token NUM ADD SUB
%start cal
%left ADD SUB

%%
program: statements
    ;
statements: IF LP exp RP LB id_declare RB
    ;
id id_declare: ID ASSIGN exp SEMICOLON
    ;
exp: exp ADD number
| exp SUB number
| number

cal: exp {$$=$1; printf("exp = cal %d\n",$$);}
    ;
exp: exp ADD NUM {$$=$1+$3; printf("exp: exp SUM NUM %d\n",$$);}
      |  exp SUB NUM {$$=$1-$3; printf("exp: exp SUB NUM %d\n",$$);}
       |  NUM {$$=$1; printf("exp = NUM %d\n",$$);}
    ;




// exp: exp ADD NUM {$$=$1+$3; }
//       |  exp SUB NUM {$$=$1-$3; }
//        |  NUM {$$=$1; }
//     ;


// cal: NUM ADD NUM {$$=$1+$3; printf("%d\n",$$);}
// cal: NUM SUB NUM {$$=$1-$3; printf("%d\n",$$);}
//     ;   
%%

int main()
{
    yyparse();
    printf("Parsing Finished\n");
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}



// %{
// #include <stdio.h>
// void yyerror(const char *s);
// int yylex();
// %}

// %union {
//     char *str;
//     int num;
// }

// %token <str> RUET CUET BUET CSE EEE
// %token <num> NUMBER
// %token NEWLINE

// %type <str> university department
// %type <num> statement
// %start statements

// %%

// statements:
//     statements statement
//     | statement
//     ;

// statement:
//     university department NUMBER NEWLINE { 
//         printf("Parsed: %s %s %d\n", $1, $2, $3);
//     }
//     ;

// university:
//     RUET { $$ = $1; }
//     | CUET { $$ = $1; }
//     | BUET { $$ = $1; }
//     ;

// department:
//     CSE { $$ = $1; }
//     | EEE { $$ = $1; }
//     ;

// %%

// void yyerror(const char *s) {
//     fprintf(stderr, "Error: %s\n", s);
// }

// int main() {
//     yyparse();
//     return 0;
// }





// %option noyywrap

// %{
// #include "cal.tab.h"
// %}

// %%
// "RUET"  { yylval.str = strdup(yytext); return RUET; }
// "CUET"  { yylval.str = strdup(yytext); return CUET; }
// "BUET"  { yylval.str = strdup(yytext); return BUET; }
// "CSE"   { yylval.str = strdup(yytext); return CSE; }
// "EEE"   { yylval.str = strdup(yytext); return EEE; }
// [1-9][0-9] { yylval.num = atoi(yytext); return NUMBER; }
// [\t ]+  {}  
// "\n"    { return NEWLINE; }
// %%
