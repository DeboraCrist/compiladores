%{
#include "parser.tab.h"
%}

%%
[0-9]+    { yylval = atoi(yytext); return NUMBER; }
\n        { return EOL; }
.         { /* ignora outros caracteres */ }
%%

int yywrap() {
    return 1;
}
