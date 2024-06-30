cmake_minimum_required(VERSION 3.28)
project(i_lang C)

set(CMAKE_C_STANDARD 11)

add_executable(mycalc main.c)

add_executable(parser 02/lexicalanalyzer.c 02/parser.c)