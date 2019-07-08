/// @desc Handle inputs & editor

if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_space)) {
	world_toggle_editor(!editorActive);	
}

if (editorActive) {
	
	var _mgx = floor(mouse_x / CELL_WIDTH);
	var _mgy = floor(mouse_y / CELL_HEIGHT);
	
	hover_x = lerp(hover_x, _mgx, .3);
	hover_y = lerp(hover_y, _mgy, .3);
	
	// Early return if no click;
	var _click = mouse_check_button(mb_left) | mouse_check_button(mb_right) * 2;
	if (!_click) return;
	
	// Early return if click outside world.
	var _click_inside_world = (_mgx >= 0 && _mgx < grid_width && _mgy >= 0 && _mgy < grid_height);
	if  (!_click_inside_world) return;
	
	if (_click & 1) {
		// Place block.
		with (obj_editor) editor_place_block(_mgx, _mgy);
	} else {
		// Erase block.
		with (obj_editor) editor_erase_block(_mgx, _mgy);
	}
}