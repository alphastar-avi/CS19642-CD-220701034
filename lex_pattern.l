%{
  #include <stdio.h>
%}
%option noyywrap

%%


"int"|"float"|"main"|"return"|"for" { printf("Keyword: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }

"&"|"!"|"{"|"}"|"["|"]" { printf("Symbols: %s\n", yytext);}

[0-9]+(\.[0-9]+)? { printf("constant: %s\n", yytext);}

"+"|"-"|"/"|"*" { printf("Operator: %s\n", yytext);}

"//".* { printf("Comment: //%s\n", yytext);}

[ \t\n];
%%

int main() {
  printf("Please enter your wisdom code:\n");
  yylex();
  return 0;
}
