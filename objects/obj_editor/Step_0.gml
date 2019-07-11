// Don't do anything when not in edit mode.
if (global.GameState != GameState.edit) return;

// Change the selected tile.
if (check_input(Input.select_previous)) {
	editor_select_previous();
} else if (check_input(Input.select_next)) {
	editor_select_next();
}

// Update the cursor.

if (!gp_enabled) {
	cursor_grid_x = floor(mouse_x / CELL_WIDTH);
	cursor_grid_y = floor(mouse_y / CELL_HEIGHT);
	cursor_x = lerp(cursor_x, cursor_grid_x, .3);
	cursor_y = lerp(cursor_y, cursor_grid_y, .3);
} else {
	cursor_x += lengthdir_x(global.GamepadAxisLen, global.GamepadAxisDir) * 4;
	cursor_y += lengthdir_y(global.GamepadAxisLen, global.GamepadAxisDir) * 4;
	cursor_grid_x = floor(cursor_x / CELL_WIDTH);
	cursor_grid_y = floor(cursor_y / CELL_HEIGHT);
}
//show_debug_message(string(cursor_grid_x) + " > " + string(cursor_grid_y));

// Place a tile.
if (check_input(Input.primary_action)) {
	editor_place_tile(cursor_grid_x, cursor_grid_y);
}

// Erase a tile.
else if (delayTimer == 0 && check_input(Input.secondary_action)) {
	editor_erase_tile(cursor_grid_x, cursor_grid_y);
}