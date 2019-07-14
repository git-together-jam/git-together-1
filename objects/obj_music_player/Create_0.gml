mixer_state = GameState.in_menu;

crossfade_time = 300; // in milliseconds

// Tracks.
menu_track = snd_track_menu;
game_tracks = ds_list_create();
ds_list_add(game_tracks, snd_track1, snd_track1_dream, snd_track1_reverse, snd_track1_reverse_dream);
ds_list_add(game_tracks, snd_track2, snd_track2_dream, snd_track2_reverse, snd_track2_reverse_dream);

// Selected group.
selected_group = 1;
active_group_track = 0;

event_user(0);


//track_theme = audio_play_sound(snd_music_theme, 1000, true);
//track_theme_reverse = audio_play_sound(snd_music_theme_reverse, 1000, true);
//track_dream = audio_play_sound(snd_music_dream, 1000, true);
//track_dream_reverse = audio_play_sound(snd_music_dream_reverse, 1000, true);

//audio_sound_gain(track_theme_reverse, 0, 0);
//audio_sound_gain(track_dream, 0, 0);
//audio_sound_gain(track_dream_reverse, 0, 0);