%{
#include <stdio.h>
int yylex();
void yyerror(const char *);
%}

%token IF ELSE FOR WHILE

%%
program : statement
        ;

statement : IF        { printf("Palavra reservada encontrada: IF\n"); }
          | ELSE      { printf("Palavra reservada encontrada: ELSE\n"); }
          | FOR       { printf("Palavra reservada encontrada: FOR\n"); }
          | WHILE     { printf("Palavra reservada encontrada: WHILE\n"); }
          ;
%%

void yyerror(const char *msg) {
    fprintf(stderr, "Erro de análise: %s\n", msg);
}

int main() {
    printf("Digite uma instrução:\n");
    yyparse();
    return 0;
}

