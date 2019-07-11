if (mixer_state == global.GameState) exit;

var track_theme_lvl = (global.GameState != GameState.edit);
audio_sound_gain(track_theme, track_theme_lvl, crossfade_time);

var track_dream_lvl = (global.GameState == GameState.edit);
audio_sound_gain(track_dream, track_dream_lvl, crossfade_time);

mixer_state = global.GameState;