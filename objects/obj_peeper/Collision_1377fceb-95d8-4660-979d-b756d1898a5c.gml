/// @description Boing!

if (global.GameState != GameState.play) exit;

if (state != "bounce") with (other) {
	player_set_state(PlayerState.in_air, true);
	vspd = -other.bouncePower;
	audio_play_sound(snd_spring, 10, false);
}
state = "bounce";