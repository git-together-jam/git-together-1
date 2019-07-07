/// @desc Handle inputs & editor

if (keyboard_check_pressed(ord("P"))) {
	world_toggle_editor(!editorActive);	
}

if (editorActive) {
	
	var _mgx = floor(mouse_x / CELL_WIDTH);
	var _mgy = floor(mouse_y / CELL_HEIGHT);
	
	hover_x = lerp(hover_x, _mgx, .3);
	hover_y = lerp(hover_y, _mgy, .3);
	
	var _click = mouse_check_button(mb_left) | mouse_check_button(mb_right) * 2;
	
	// Click inside world grid
	if (_click && _mgx >= 0 && _mgx < grid_width && _mgy >= 0 && _mgy < grid_height) {
		grid[# _mgx, _mgy] = _click & 1 ? lTool : rTool;
	}
}