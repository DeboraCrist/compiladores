%{
#include "ex1.tab.h"
%}

%%
"if"    { return IF; }
"else"  { return ELSE; }
"for"   { return FOR; }
"while" { return WHILE; }
%%
