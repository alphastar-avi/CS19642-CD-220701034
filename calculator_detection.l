%{
#include <stdio.h>
  int isvalid=1;
%}
%option noyywrap

%%

[0-9]+(\.[0-9]+)? { printf("Numbers: %s\n" ,yytext);}
"+"|"-"|"*"|"/"   { printf("Operator: %s\n", yytext);}
"("|")"           { printf("Parenthesis: %s\n", yytext);}
[ \t]+            {}
.                 { printf("Invalid: %s\n", yytext); isvalid=0;}


%%

int main(){
    printf("Gimme Sums:\n");
    yylex();
    return 0;
  }
