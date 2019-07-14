/// @description Stop track(s) after fade out.

if (mixer_state == GameState.in_menu) {
	
	// Stop all game group tracks.
	var offset = selected_group * 4;
	for (var i = 0; i < 4; i ++) {
		var track = ds_list_find_value(game_tracks, offset + i);
		audio_stop_sound(track);
	}
	
} else {
	
	// Stop menu track.
	audio_stop_sound(menu_track);
	
}