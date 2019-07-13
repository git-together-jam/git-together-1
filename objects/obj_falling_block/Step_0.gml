if (!breaking_down && instance_exists(PLAYER)) {
	
	// Get player coordinates.
	var player_x, player_y;
	with (PLAYER) {
		player_x = x;
		player_y = y;
	}
	
	// Check if player is over block.
	var dif_x = player_x - x;
	if (dif_x < 0 || dif_x > CELL_WIDTH) exit;
	
	var dif_y = y - player_y;
	if (dif_y > 0 && dif_y < 9) {
		image_index = 1;
		alarm[0] = FALLING_BLOCK_DELAY;
		breaking_down = true;
	}
	
}