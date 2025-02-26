%option noyywrap

%{
    //Roll:221-15-5308
%}


%%
"University" {yylval.str = strdup(yytext); return University;}
"Dhaka" {yylval.str = strdup(yytext); return University_Name;}
"Jahangirnagar" {yylval.str = strdup(yytext); return University_Name;}
"Jagannath" {yylval.str = strdup(yytext); return University_Name;}
"DU" {yylval.str = strdup(yytext); return University_Name_Short_Form;}
"JU" {yylval.str = strdup(yytext); return University_Name_Short_Form;}
"JnU" {yylval.str = strdup(yytext); return University_Name_Short_Form;}
"(" { yylval = atoi(yytext); return(LP);}
")" { yylval = atoi(yytext); return(RP);}
"!" { yylval = atoi(yytext); return(Special_Character);}
%%