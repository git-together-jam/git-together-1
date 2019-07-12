x = 0;
y = 0;

gp_enabled = obj_input_manager.gp_enabled;

// Cursor position. Allows subpixels and eases toward mouse pointer every step.
cursor_x = 0;
cursor_y = 0;
cursor_grid_x = 0;
cursor_grid_y = 0;

ui_padding = 5;

// available_tiles is an array with the indexes corresponding to the tile set indexes,
// and the values telling how many of the tiles are available to be placed.
available_tiles = array_create(NUM_OF_TILES, 0);

// If set to true, the user won't be restricted to editable areas.
disable_editable_areas = false;

global.SelectedTile = undefined;

// Number of "dreams" avalible
dreams = 3;

// Delay for switching back to play mode
editModeDelay = room_speed * .3;
delayTimer = 0;