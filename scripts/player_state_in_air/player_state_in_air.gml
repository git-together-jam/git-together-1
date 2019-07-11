/// @desc In air state

var _fallSpeed = fallSpeed;

// Acceleration and friction
player_acceleration_friction(moveDir, movementSpeed, acc, fric);

// Check for tiles both left and right -/J
switch(tile_at_position(bbox_left-1, y, "Tiles")) { // Left check
	case TileType.slime:
		_fallSpeed *= 0.1;
	break;
}
switch(tile_at_position(bbox_right+1, y, "Tiles")) { // Right check
	case TileType.slime:
		_fallSpeed *= 0.1;
	break;
}

// "Rookie code is allowed during game jams" - Abraham Lincoln

// Apply gravity
var _vspd = min(vspd + grav, vspdMax);
if (_vspd < 0){
	vspd = _vspd;
}else{
	vspd = _vspd * _fallSpeed; // Only apply fall multiplier if falling -/J
}

// Check for ground and switch to on_ground state
if (solid_meeting(x, y + 1)) {
	player_set_state(PlayerState.on_ground, true);
}