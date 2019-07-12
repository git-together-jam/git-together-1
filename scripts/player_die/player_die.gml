if (state == PlayerState.dead) return;

sprite_index = spr_ed_hurt_right;
alarm[0] = room_speed;
audio_play_sound(snd_die, 800, false);
	
player_set_state(PlayerState.dead, false);