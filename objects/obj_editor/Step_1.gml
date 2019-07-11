// Toggle the editor on/off.
if (global.GameState == GameState.play) {
	
	// Switch to edit mode.
	if (dreams && check_input(Input.secondary_action)) {
		with (obj_camera) {
			followTarget = false;
		}
		global.GameState = GameState.edit;
		delayTimer = editModeDelay;
		
		dreams--;
	}
	
} else if (global.GameState == GameState.edit) {
	
	// Delay before switching back to play mode.
	if (delayTimer > 0) {
		delayTimer--;
		exit;
	}
	
	// Switch back to play mode.
	if (check_input(Input.move_left) || check_input(Input.move_right) || check_input(Input.jump)) {
		with (obj_camera) {
			followMode = CamFollowMode.smooth;
			followTarget = true;
		}
		global.GameState = GameState.play;
		delayTimer = -1;
	}
	
}