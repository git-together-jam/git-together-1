/// @desc Handle inputs & editor

if (keyboard_check_pressed(ord("P"))) {
	world_toggle_editor(!editorActive);	
}

if (editorActive) {
	hover_x = lerp(hover_x, floor(mouse_x / cellSize), .3);
	hover_y = lerp(hover_y, floor(mouse_y / cellSize), .3);
}