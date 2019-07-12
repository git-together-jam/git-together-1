/// @description Controller Support
if (gp_enabled) {
	if (abs(gamepad_axis_value(0, gp_axislv)) > 0.7 && !gp_flicked) {
		gp_flicked = true;
		gp_selection = clamp(gp_selection + round(gamepad_axis_value(0,gp_axislv)), 0, array_length_1d(gp_choices)-1);
		audio_play_sound(snd_hover, 10, false);
	} else if (abs(gamepad_axis_value(0, gp_axislv)) < 0.3) {
		gp_flicked = false;
	}
}