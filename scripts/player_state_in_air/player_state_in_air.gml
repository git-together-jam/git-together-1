/// @desc In air state
var _fallSpeed = fallSpeed;

// Check for tiles both left and right

var _slimeWallDir = 0;
var _vspdMax = vspdMax;

// Left check
switch(tile_at_position(bbox_left - 1, y, "Tiles")) {
	case TileType.slime:
		_fallSpeed = 0.65;
		_slimeWallDir = -1;
		_vspdMax = vspdMax_slime;
	break;
}
// Right check
switch(tile_at_position(bbox_right + 1, y, "Tiles")) {
	case TileType.slime:
		_fallSpeed = 0.65;
		_slimeWallDir = 1;
		_vspdMax = vspdMax_slime;
	break;
}

// Acceleration and friction
player_acceleration_friction(moveDir, movementSpeed, acc, fric);

// Check for deadly objects
if (player_check_deadly_objects()) exit;

// Wall jump
if (_slimeWallDir != 0 && check_input(Input.jump)) {
	hspd = -_slimeWallDir * wallJumpSpeed_x;
	vspd = -wallJumpSpeed_y * gravDir;
}

// Variable jump height
if (vspd * gravDir < -1 && !check_input(Input.jump_hold)) {
	vspd = lerp(vspd, -1, 0.45);
}

// Apply gravity
gravDirSmooth = approach(gravDirSmooth, gravDir, gravChangeSpeed);
var _vspd = clamp(vspd + grav * gravDirSmooth, -_vspdMax, _vspdMax);

// Apply fall multiplier when falling
if (_vspd * gravDir > 0) {
	vspd = _vspd * _fallSpeed;
} else {
	vspd = _vspd;
}

// Check for ground and switch to on_ground state
if (solid_meeting(x, (gravDir == 1) ? bbox_bottom + 1 : bbox_top - 1)) {
	gravDirSmooth = gravDir;
	player_set_state(PlayerState.on_ground, true);
}