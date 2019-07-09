x = 0;
y = 0;

// Cursor position. Allows subpixels and eases toward mouse pointer every step.
cursor_x = 0;
cursor_y = 0;

ui_padding = 5;

// available_tiles is a list with the indexes corresponding to the tile set indexes,
// and the values telling how many of the tiles are available to be placed.
available_tiles = ds_list_create();
repeat (NUM_OF_TILES) ds_list_add(available_tiles, 0);

// If set to true, the user won't be restricted to editable areas.
disable_editable_areas = false;

global.SelectedTile = undefined;