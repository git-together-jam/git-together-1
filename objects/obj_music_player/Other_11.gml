/// @description Update game tracks.

var active_track = 0;
if (instance_exists(PLAYER) && PLAYER.gravDir == -1) active_track += 2;
if (global.GameState == GameState.edit) active_track ++;

if (active_group_track != active_track) {
	var offset = selected_group * 4;
	var prev_track = ds_list_find_value(game_tracks, offset + active_group_track);
	var next_track = ds_list_find_value(game_tracks, offset + active_track);
	
	audio_sound_gain(prev_track, 0, crossfade_time);
	audio_sound_gain(next_track, 1, crossfade_time);
	
	active_group_track = active_track;
}