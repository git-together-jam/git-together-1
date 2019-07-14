if (instance_exists(PLAYER)) {
	
	// Get player coordinates.
	var player_x, player_y;
	with (PLAYER) {
		player_x = x;
		player_y = y;
	}
	
	// Check if player is over block.
	var dif_x = player_x - center_x;
	var dif_y = player_y - center_y;
	if (abs(dif_x) > 14 || abs(dif_y) > 14) exit;
	
	var player_push_x = 0;
	var player_push_y = 0;
	if (abs(dif_x) > abs(dif_y)) {
		player_push_x = sign(dif_x) * PUSH_BLOCK_FORCE / 2;
	} else {
		player_push_y = sign(dif_y) * PUSH_BLOCK_FORCE;
	}
	
	with (PLAYER) {
		hspd = player_push_x;
		vspd = player_push_y;
	}
	
	if (abs(player_push_x) + abs(player_push_y)) {
		audio_play_sound(snd_spring, 10, false);
	}
	
}