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
		_moveSpeed += 0.1;
		_fric = .124;
		break;
	case TileType.deadly:
		hspd = 0;
		sprite_index = spr_ed_hurt_right;
		player_set_state(PlayerState.dead, false);
		audio_play_sound(snd_die, 800, false);
		break;
}

// Acceleration and friction
player_acceleration_friction(moveDir, _moveSpeed, _acc, _fric);

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