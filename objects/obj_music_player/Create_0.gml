crossfade_time = 300; // in milliseconds

track_theme = audio_play_sound(snd_music_theme, 1000, true);
track_dream = audio_play_sound(snd_music_dream, 1000, true);
audio_sound_gain(track_dream, 0, 0);

mixer_state = GameState.in_menu;