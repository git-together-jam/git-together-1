gml_pragma("forceinline");

sprite_index = spr_ed_hurt_right;
alarm[0] = PLAYER_DIE_TIME;
audio_play_sound(snd_die, 800, false);
	
player_set_state(PlayerState.dead, false);

// Create dying spirit.
instance_create_depth(x, y - 8, 0, obj_dying_spirit);