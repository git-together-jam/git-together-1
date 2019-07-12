// Toggle the editor on/off.
if (global.GameState == GameState.play) {
	
	// Switch to edit mode.
	if (dreams && check_input(Input.secondary_action)) {
		// Bring editable area up
		layer_depth(editAreaLayer, layer_get_depth(layer_get_id("Tiles") - 1));
		
		// Set cursor starting position.
		if (!gp_enabled) {
			cursor_x = floor(mouse_x / CELL_WIDTH);
			cursor_y = floor(mouse_y / CELL_WIDTH);
		} else {
			cursor_x = obj_player.x;
			cursor_y = obj_player.y;
		}
		
		// Reset gampad enabled. Will be disabled once user moves mouse.
		gp_enabled = obj_input_manager.gp_enabled;
		
		with (obj_camera) {
			followTarget = false;
		}
		
		delayTimer = editModeDelay;
		dreams--;
		global.GameState = GameState.edit;
	}
	
} else if (global.GameState == GameState.edit) {
	
	// Delay before switching back to play mode.
	if (delayTimer > 0) {
		delayTimer--;
		exit;
	}
	
	// Switch back to play mode.
	var do_exit;
	if (!gp_enabled) do_exit = check_input(Input.move_left) || check_input(Input.move_right) || check_input(Input.jump);
	else do_exit = check_input(Input.jump)
	
	if (do_exit) {
		// Knock editable area down
		layer_depth(editAreaLayer, layer_get_depth(layer_get_id("Tiles") + 1));
		
		with (obj_camera) {
			followMode = CamFollowMode.smooth;
			followTarget = true;
		}
		
		delayTimer = -1;
		global.GameState = GameState.play;
	}
	
}