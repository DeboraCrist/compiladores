%{
#include <stdio.h>
%}

%%
[!@#$%^&*()]   { printf("Caractere especial encontrado: %s\n", yytext); }
.              { /* Ignorar outros caracteres */ }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
