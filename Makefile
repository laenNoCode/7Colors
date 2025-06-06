CC = gcc

CFLAGS = -Wall -Werror -g -I$(HEAD_DIR) -fopenmp
LDFLAGS = -lm -lSDL2_ttf -lSDL2


SRC_DIR = src
OBJ_DIR = o
HEAD_DIR = head

MODULES = GR0_GameState GR0_queue GR0_display GR0_Agents GR0_utilities GR0_map_functions GR0_main GR0_sdl GR0_console

OBJ = $(patsubst %, $(OBJ_DIR)/%.o, $(MODULES))

TARGET = 7color

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET) $(LDFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJ)

cleanall: clean
	rm -rf $(OBJ_DIR)