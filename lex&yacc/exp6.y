%{
#include <stdio.h>
extern char *yytext;
int yylex(void);
void yyerror( const char* msg);
%}
%token IDENTIFER

%%
stmt: IDENTIFER { printf(" valid variable %s\n", yytext);} 
    ;

%%
void yyerror( const char* msg){
printf("invalid");
}

int main(){
printf("Enter:\n");
yyparse();
return 0;
}
