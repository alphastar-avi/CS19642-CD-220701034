%{
#include "exp5.tab.h"
%}
%option noyywrap

%%

[a-zA-Z][a-zA-Z0-9]* {return IDENTIFER;}
[ \t\n] {}
. { return -1;}

%%

