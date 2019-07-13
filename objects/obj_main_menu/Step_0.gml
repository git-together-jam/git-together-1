/// @description Controller Support / Buttons
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

//Move buttons
with(obj_button_large) {
	if (mouse_over) {
		x = lerp(x, xstart + 10, .1);
	} else {
		x = lerp(x, xstart, .2);
	}
}