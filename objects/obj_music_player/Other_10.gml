/// @description Switch between menu or game state

if (mixer_state == GameState.in_menu) {
	
	audio_play_sound(menu_track, 1000, true);
	audio_sound_set_track_position(menu_track, 0);
	audio_sound_gain(menu_track, 0, 0);
	audio_sound_gain(menu_track, 1, crossfade_time);
	
	var offset = selected_group * 4;
	for (var i = 0; i < 4; i ++) {
		var track = ds_list_find_value(game_tracks, offset + i);
		audio_sound_gain(track, 0, crossfade_time);
	}
	
} else {
	
	audio_sound_gain(menu_track, 0, crossfade_time);
	
	selected_group = (selected_group == 0) ? 1 : 0;
	active_group_track = 0;
	
	var offset = selected_group * 4;
	for (var i = 0; i < 4; i ++) {
		var track = ds_list_find_value(game_tracks, offset + i);
		var lvl = (i == 0);
		
		audio_play_sound(track, 1000, true);
		audio_sound_set_track_position(track, 0);
		audio_sound_gain(track, 0, 0);
		audio_sound_gain(track, lvl, crossfade_time);
	}
	
}

alarm[0] = room_speed;