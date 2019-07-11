// Don't do anything when not in edit mode.
if (global.GameState != GameState.edit) return;

// Change the selected tile.
if (check_input(Input.select_previous)) {
	editor_select_previous();
} else if (check_input(Input.select_next)) {
	editor_select_next();
}

// Update the cursor.
var cursor_positon_x = floor(mouse_x / CELL_WIDTH);
var cursor_positon_y = floor(mouse_y / CELL_HEIGHT);
	
cursor_x = lerp(cursor_x, cursor_positon_x, .3);
cursor_y = lerp(cursor_y, cursor_positon_y, .3);

// Place a tile.
if (check_input(Input.primary_action)) {
	editor_place_tile(cursor_positon_x, cursor_positon_y);
}

// Erase a tile.
else if (delayTimer == 0 && check_input(Input.secondary_action)) {
	editor_erase_tile(cursor_positon_x, cursor_positon_y);
}