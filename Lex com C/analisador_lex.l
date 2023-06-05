%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[A-Z]+    { printf("Palavra em letras maiúsculas: %s\n", yytext); }
[a-z]+    { printf("Erro: Palavra em letras minúsculas encontrada: %s\n", yytext); }
.         { /* Ignorar outros caracteres */ }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}

