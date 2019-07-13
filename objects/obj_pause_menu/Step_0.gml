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
		offset_y = y - 32;
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

// Controller Support
if (gp_enabled) {
	if (abs(gamepad_axis_value(0, gp_axislv)) > 0.7 && !gp_flicked) {
		gp_flicked = true;
		gp_selection = clamp(gp_selection + round(gamepad_axis_value(0,gp_axislv)), 0, array_length_1d(gp_choices)-1);
		audio_play_sound(snd_hover, 10, false);
	} else if (abs(gamepad_axis_value(0, gp_axislv)) < 0.3) {
		gp_flicked = false;
	}
	
	// Alter buttons accordingly
	var _press = check_input(Input.primary_action);
	
	with(obj_button_large) {
		if (other.gp_choices[other.gp_selection] == id) {
			mouse_over = true;
			image_index = 1;
			if (_press) {
				event_perform(ev_mouse,ev_left_press);
			}
		} else {
			mouse_over = false;
			image_index = 0;
		}
	}
}