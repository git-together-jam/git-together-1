// Don't do anything when not in edit mode.
if (global.GameState != GameState.edit) exit;

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
	var _move = false;
	if (global.GamepadAxisLen > 0.7){
		if (!gp_flicked) {
			gp_flicked = true;
			_move = true;
		} else if (++gp_hold_time > 4 && ++gp_loop_time % 3 == 0) {
			_move = true;
		}
	} else {
		gp_flicked = false;
		gp_hold_time = 0;
	}
	if (_move) {
		cursor_x += (global.GamepadAxisH) * CELL_WIDTH;
		cursor_y += (global.GamepadAxisV) * CELL_HEIGHT;
		cursor_grid_x = floor(cursor_x / CELL_WIDTH);
		cursor_grid_y = floor(cursor_y / CELL_HEIGHT);
	}
}
//show_debug_message(string(cursor_grid_x) + " > " + string(cursor_grid_y));

// Only place/remove tiles in the view
if (cursor_grid_x > VIEW_X/CELL_WIDTH &&
	cursor_grid_x < (VIEW_X + VIEW_WIDTH)/CELL_WIDTH - 1 &&
	cursor_grid_y > VIEW_Y/CELL_HEIGHT &&
	cursor_grid_y < (VIEW_Y + VIEW_HEIGHT)/CELL_HEIGHT - 1) {
	
	// Place a tile.
	if (check_input(Input.primary_action)) {
		editor_place_tile(cursor_grid_x, cursor_grid_y);
	}

	// Erase a tile.
	else if (delayTimer == 0 && check_input(Input.secondary_action)) {
		editor_erase_tile(cursor_grid_x, cursor_grid_y);
	}
}