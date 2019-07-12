crossfade_time = 300; // in milliseconds

track_theme = audio_play_sound(snd_music_theme, 1000, true);
track_theme_reverse = audio_play_sound(snd_music_theme_reverse, 1000, true);
track_dream = audio_play_sound(snd_music_dream, 1000, true);
track_dream_reverse = audio_play_sound(snd_music_dream_reverse, 1000, true);

audio_sound_gain(track_theme_reverse, 0, 0);
audio_sound_gain(track_dream, 0, 0);
audio_sound_gain(track_dream_reverse, 0, 0);

mixer_state = GameState.in_menu;
reverse_tracks = false;