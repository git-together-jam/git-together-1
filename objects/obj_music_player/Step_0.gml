var should_reverse = false;
if (instance_exists(PLAYER)) should_reverse = (PLAYER.gravDir == -1);

if (mixer_state == global.GameState && reverse_tracks == should_reverse) exit;

audio_sound_gain(
	track_theme,
	(global.GameState != GameState.edit && !should_reverse),
	crossfade_time
);

audio_sound_gain(
	track_theme_reverse,
	(global.GameState != GameState.edit && should_reverse),
	crossfade_time
);

audio_sound_gain(
	track_dream,
	(global.GameState == GameState.edit && !should_reverse),
	crossfade_time
);

audio_sound_gain(
	track_dream_reverse,
	(global.GameState == GameState.edit && should_reverse),
	crossfade_time
);

mixer_state = global.GameState;
reverse_tracks = should_reverse;