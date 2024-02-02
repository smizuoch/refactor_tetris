#ifndef TETRIS_H
#define TETRIS_H

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <ncurses.h>

#define R 20
#define C 15
#define T 1
#define F 0

typedef struct {
    char **array;
    int width, row, col;
} Struct;

Struct FunctionCS(Struct shape);
void FunctionDS(Struct shape);
int FunctionCP(Struct shape);
void FunctionRS(Struct shape);
void FunctionPT();
int hasToUpdate();
void set_timeout(int time);

#endif // TETRIS_H
