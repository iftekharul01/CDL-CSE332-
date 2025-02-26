%option noyywrap

%{

%}

digit [0-9]
digits ({digit}+)
s[ \t\n]
ws({s}+)
letter[a-zA-Z]
letters({letter}+)
us [_]

%%

%%