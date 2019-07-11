/// @description Checkpoint respawn

if (checkpoint == noone) {
	x = startX;
	y = startY;
} else {
	x = checkpoint.x;
	y = checkpoint.y - 1;
}

player_set_state(PlayerState.on_ground, true);