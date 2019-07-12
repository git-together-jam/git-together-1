if (global.GameState = GameState.in_menu) exit;

if (check_input(Input.pause_game)) {
	is_paused = (!is_paused);

	// Unpause.
	if (!is_paused) {
		instance_deactivate_object(obj_button_large);
		instance_activate_object(obj_game_object);
		global.GameState = return_state;
		exit;
	}
	
	// Pause.
	return_state = global.GameState;
	instance_deactivate_object(obj_game_object)
	global.GameState = GameState.paused;
	
	// Show and align buttons.
	var offset_x, offset_y;
	with (obj_camera) {
		offset_x = x - 55;
		offset_y = y - 24;
	}
	
	var num_of_buttons = ds_list_size(buttons);
	for (var i = 0; i < num_of_buttons; i ++) {
		var btn = buttons[|i];
		btn.x = offset_x;
		btn.y = offset_y;
		
		offset_y += 27;
	}
	
	instance_activate_object(obj_button_large);
}