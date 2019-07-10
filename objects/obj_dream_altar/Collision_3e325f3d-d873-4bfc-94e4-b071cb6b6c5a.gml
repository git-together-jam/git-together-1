/// @description Give dreams to player

if (dreams) {
	obj_editor.dreams += dreams;
	dreams = 0;
	
	audio_play_sound(snd_dream_get, 10, false);
	image_index++;
}