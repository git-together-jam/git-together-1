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
	case TileType.deadly:
		hspd = 0;
		sprite_index = spr_ed_hurt_right;
		player_set_state(PlayerState.dead, false);
		audio_play_sound(snd_die, 800, false);
		break;
}

// Acceleration and friction
player_acceleration_friction(moveDir, _moveSpeed, _acc, _fric);

// Check for jumping and switch to in_air state
if (check_input(Input.jump)) {
	player_set_state(PlayerState.in_air, true);
	vspd = -jumpSpeed;
} else if (!solid_meeting(x, y + 1)) {
	player_set_state(PlayerState.in_air, true);
}