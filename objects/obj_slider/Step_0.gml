if (position_meeting(mouse_x, mouse_y, id)) {
	if (!justEntered) {
		if (!mouse_check_button(mb_left)) audio_play_sound(snd_hover, 10, false);
		xOnEntry = x;
		
		justEntered = true;
		image_index = 1;
	}
	mouseX = mouse_x;
	
	if (mouse_check_button(mb_left)) canMoveSlider = true;
	else canMoveSlider = false;
} else {
	justEntered = false;
	image_index = 0;
}

//Slider movement seperated from collision
//so slider can still be moved if there isn't one.
if (canMoveSlider) {
	if (mouse_check_button(mb_left)) {
		x = clamp(xOnEntry + (mouse_x - mouseX), xOriginal, xOriginal+sliderRange);
		number = round((numberMax*(x - xOriginal))/sliderRange);
		
		canMoveSlider = true;
		image_index = 1;
	}
	else {
		mouseX = mouse_x;
		canMoveSlider = false;
	}
}

// Set volume
if (!is_undefined(audGroup)) switch (audGroup) {
	case audiogroup_fx:
		global.FxGain = number/numberMax;
		audio_group_set_gain(audiogroup_fx, global.FxGain, 0);
		break;
	case audiogroup_default:
		global.MusicGain = number/numberMax;
		audio_group_set_gain(audiogroup_default, global.MusicGain, 0);
		break;
}