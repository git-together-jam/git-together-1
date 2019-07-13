/// @description Meow!

if (global.GameState != GameState.play) exit;

if (obj_editor.dreams < 3) {
	obj_editor.dreams = 3;
	state = "pet";
	audio_play_sound(snd_spring, 10, false);
}