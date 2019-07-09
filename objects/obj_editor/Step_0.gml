// Toggle the editor on/off.
if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_space)) {
	
	// Switch to edit mode.
	if (global.GameState == GameState.play) {
		with (obj_camera) {
			followMode = CamFollowMode.keyboard;
			followTarget = false;
		}
		global.GameState = GameState.edit;
	}
	
	// Switch back to play mode.
	else if (global.GameState == GameState.edit) {
		with (obj_camera) {
			followMode = CamFollowMode.smooth;
			followTarget = true;
		}
		global.GameState = GameState.play;
	}
}

if (global.GameState != GameState.edit) return;

// Change the selected tile.
if (keyboard_check_pressed(ord("Q")) || mouse_wheel_up()) {
	editor_select_previous();
} else if (keyboard_check_pressed(ord("E")) || mouse_wheel_down()) {
	editor_select_next();
}

// Update the cursor.
var cursor_positon_x = floor(mouse_x / CELL_WIDTH);
var cursor_positon_y = floor(mouse_y / CELL_HEIGHT);
	
cursor_x = lerp(cursor_x, cursor_positon_x, .3);
cursor_y = lerp(cursor_y, cursor_positon_y, .3);

// Place a tile.
if (mouse_check_button(mb_left)) {
	editor_place_tile(cursor_positon_x, cursor_positon_y);
}

// Erase a tile.
else if (mouse_check_button(mb_right)) {
	editor_erase_tile(cursor_positon_x, cursor_positon_y);
}