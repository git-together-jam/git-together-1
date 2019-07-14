/// @description Boing!

if (global.GameState != GameState.play) exit;

if (state != "bounce" && check_input(Input.jump_hold)) with (other) {
	player_set_state(PlayerState.in_air, true);
	vspd = -other.bouncePower;
	other.state = "bounce";
	
	audio_play_sound(snd_spring, 10, false);
}