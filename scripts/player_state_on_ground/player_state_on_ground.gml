/// @desc On ground state

// Apply tile effects
var _moveSpeed = movementSpeed;
var _acc = acc;
var _fric = fricGround;

switch(tile_at_position(x, y + 1, "Tiles")) {
	case TileType.slime:
		_moveSpeed *= 0.5;
		break;
	case TileType.ice:
		_moveSpeed += 0.1;
		_fric = .124;
		break;
}

// Acceleration and friction
player_acceleration_friction(moveDir, _moveSpeed, _acc, _fric);

// Check for jumping and switch to in_air state
if (key_jump) {
	player_set_state(PlayerState.in_air, true);
	vspd = -jumpSpeed;
} else if (!tile_meeting(x, y + 1, "Tiles"))
player_set_state(PlayerState.in_air, true);