%{
#include <stdio.h>
extern int yylex();
void yyerror(const char *);
%}

%token NUMBER EOL

%%

start : expression EOL { if ($1 % 2 == 0)
                            printf("O número %d é par.\n", $1);
                        else
                            printf("O número %d é ímpar.\n", $1);
                      }
      ;

expression : NUMBER
           ;

%%

void yyerror(const char *msg) {
    fprintf(stderr, "Erro de análise: %s\n", msg);
}

int main() {
    printf("Digite um número: ");
    yyparse();
    return 0;
}
