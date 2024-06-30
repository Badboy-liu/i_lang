环境文件
https://sourceforge.net/projects/winflexbison/files/latest/download


bison --yacc -dv mycalc.y
flex mycalc.l

gcc -o mycalc y.tab.c lex.yy.c

