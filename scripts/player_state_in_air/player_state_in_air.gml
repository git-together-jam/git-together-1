/// @desc In air state

// Acceleration and friction
player_acceleration_friction(moveDir, movementSpeed, acc, fric);

// Apply gravity
vspd = min(vspd + grav, vspdMax);

// Check for ground and switch to on_ground state
if (tile_meeting(x, y + 1, "Tiles"))
	player_set_state(PlayerState.on_ground, true);
