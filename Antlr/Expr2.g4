grammar Expr2;

email: localpart '@' domain;
localpart: ALPHANUMERIC+;
domain: ALPHANUMERIC ( '.' ALPHANUMERIC )+;

ALPHANUMERIC: [a-zA-Z0-9];

WS: [ \t\r\n]+ -> skip;


