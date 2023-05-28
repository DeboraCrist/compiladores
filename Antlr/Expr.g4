grammar Expr;

expr: term (OR term)*;
term: factor (AND factor)*;
factor: NOT factor | '(' expr ')' | VARIABLE;

OR: 'OR';
AND: 'AND';
NOT: 'NOT';
VARIABLE: [A-Za-z]+;

WS: [ \t\r\n]+ -> skip;
