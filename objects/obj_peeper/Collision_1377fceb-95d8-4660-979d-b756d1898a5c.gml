/// @description Boing!

if (global.GameState != GameState.play) exit;

with (other) {
	player_set_state(PlayerState.in_air, true);
	vspd = -other.bouncePower;
	if (!audio_is_playing(snd_spring)) {
		audio_play_sound(snd_spring, 10, false);
	}
}
state = "bounce";