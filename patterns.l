%{
#include<stdio.h>
#include<string.h>
int i = 0;
%}
%%
([a-zA-Z0-9])+ { i++; }       // Match a word
"\n"         { printf("%d\n", i); i = 0; }
%%
int yywrap(void) { return 1; }

int main() {
    yylex();
    return 0;
}
