/// @description Toggle

if (global.GameState == GameState.play) {
	var primary_action = mouse_check_button_pressed(mb_left);
	if (obj_input_manager.gp_enabled && !primary_action) primary_action = gamepad_button_check_pressed(0, gp_face3);
	
	if (primary_action) {
		on = !on;
		image_index = on;
		audio_play_sound(snd_switch, 10, false);
	}
}