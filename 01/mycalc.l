/* 定义一个函数 */
%{
#include <stdio.h>
#include "y.tab.h"


int
yywrap(void){
    return 1;
}
%}
/* 定义描述符 */
%%

"+" return ADD;
"-" return SUB;
"*" return MUL;
"/" return DIV;
"\n" return CR;
"(" return LP;
")" return RL;
([1-9][0-9]*|0|[0-9]+\.[0-9]+) {
    double temp;
    sscanf(yytext,"%lf",&temp);
    yylval.double_value = temp;
    return DOUBLE_LITERAL;
}


[  \t] ;
. {
fprintf(stderr,"lexical error.\n");
exit(1);
}
%%

