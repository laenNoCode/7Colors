#ifndef GAME_STATE_H
#define GAME_STATE_H
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdint.h>
#include "../head/GR0_queue.h"
#include "../head/GR0_utilities.h"

typedef enum Color{
	ERROR = -1,
	EMPTY,
	PLAYER_1,
	PLAYER_2,
	RED,
	GREEN,
	BLUE,
	YELLOW,
	MAGENTA,
	CYAN,
	WHITE
}Color; 


typedef struct GameState{
	Color* map;
	int size;
} GameState;



typedef Color (*func_ptr)(GameState*,Color); 

void create_empty_game_state (GameState* state, int size);

void set_map_value (GameState* state, int x, int y, Color value);

Color get_map_value (GameState* state, int x, int y);

void fill_map(GameState* state);

void GR0_free_state(GameState* state);

void GR0_initialize(GameState* etat, int grid_size);

#endif