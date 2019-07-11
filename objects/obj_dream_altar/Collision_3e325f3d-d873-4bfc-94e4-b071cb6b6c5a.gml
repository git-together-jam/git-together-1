/// @description Give dreams to player

if (dreams) {
	// Set dreams.
	if (obj_editor.dreams < dreams) {
		obj_editor.dreams = dreams;
	}
	dreams = 0;
	
	// Set checkpoint.
	PLAYER.checkpoint = id;
	
	// Audio/visual stuff.
	audio_play_sound(snd_dream_get, 10, false);
	image_index++;
}