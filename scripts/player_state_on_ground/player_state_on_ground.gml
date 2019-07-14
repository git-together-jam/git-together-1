/// @desc On ground state

// Apply tile effects
var _moveSpeed = movementSpeed;
var _acc = acc;
var _fric = fricGround;
var _groundY = ((gravDir == 1) ? bbox_bottom + 1 : bbox_top - 1);

switch(tile_at_position(x, _groundY, "Tiles")) {
	case TileType.slime:
		_moveSpeed *= 0.5;
		break;
	case TileType.ice:
		_moveSpeed = 2.4;
		_fric = .05;
		_acc = 0.3;
		break;
}

// Acceleration and friction
player_acceleration_friction(moveDir, _moveSpeed, _acc, _fric);

// Check for deadly objects
if (player_check_deadly_objects()) exit;

// Check for gravity blocks and jumping
if (tile_meeting(x, _groundY, "Tiles", TileType.gravity_change)) {
	// Gravity change block
	gravDir = -gravDir;
	gravDirSmooth = 0;
	player_set_state(PlayerState.in_air, true);
} else if (check_input(Input.jump)) {
	// Jumping
	player_set_state(PlayerState.in_air, true);
	vspd = -jumpSpeed * gravDir;
	audio_play_sound(snd_jump, 10, false);
} else if (!solid_meeting(x, y + gravDir)) {
	// In air
	player_set_state(PlayerState.in_air, true);
} 