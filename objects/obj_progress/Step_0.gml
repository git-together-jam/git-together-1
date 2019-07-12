/// @description Controller Support
if (gp_enabled) {
	if (global.GamepadAxisLen > 0.7 && !gp_flicked) {
		gp_flicked = true;
		
		if (angle_in_range(global.GamepadAxisDir, 45, 315)) { show_message("RIGHT"); } //Stage 1
		
		#region Level select
		//Stage 1
		if (gp_selection == 0) {
			//if (angle_in_range(global.GamepadAxisDir, 45, 135)) {}
			//if (angle_in_range(global.GamepadAxisDir, 135,225)) { gp_selection = 2; } //Debug
			//if (angle_in_range(global.GamepadAxisDir, 225,315)) {}
			//if (angle_in_range(global.GamepadAxisDir, 45, 315)) { gp_selection = 1; } //Stage 2
		} else if (gp_selection == 1) {
			//if (angle_in_range(global.GamepadAxisDir, 45, 315)) { gp_selection = 0; show_message("RIGHT"); } //Stage 1
		}
		#endregion
		audio_play_sound(snd_hover, 10, false);
	} else if (global.GamepadAxisLen < 0.3) {
		gp_flicked = false;
	}
	
	// Alter buttons accordingly
	var _press = check_input(Input.primary_action);
	
	with(obj_button_stage) {
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