x = 0;
y = 0;

gp_enabled = obj_input_manager.gp_enabled;

// Autotile the editable area tile layer
var _baseD = layer_get_depth(layer_get_id("Tiles"));
editAreaBottom = editable_area_autotile(_baseD + 1);
editAreaTop = editable_area_autotile(_baseD - 1);

// Cursor position. Allows subpixels and eases toward mouse pointer every step.
cursor_x = 0;
cursor_y = 0;
cursor_grid_x = 0;
cursor_grid_y = 0;

ui_padding = 5;

// available_tiles is an array with the indexes corresponding to the tile set indexes,
// and the values telling how many of the tiles are available to be placed.
available_tiles = array_create_tiles();

// If set to true, the user won't be restricted to editable areas.
disable_editable_areas = false;

global.SelectedTile = undefined;

// Number of "dreams" available
dreams = 4;
didDream = false;

// Delay for switching back to play mode
editModeDelay = room_speed * .3;
delayTimer = 0;

// Controller support
gp_flicked = false;
gp_hold_time = 0;
gp_loop_time = 0;

// Shader
layer_script_begin("Background",layer_techno_begin);
layer_script_end("Background",layer_techno_end);

layer_script_begin(editAreaBottom,layer_alpha_begin);
layer_script_end(editAreaBottom,layer_alpha_end);

layer_script_begin(editAreaTop,layer_flash_begin);
layer_script_end(editAreaTop,layer_flash_end);