// Input
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left ) || keyboard_check(ord("A"));
var key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

var _onGround = tile_meeting(x, y + 1, "Tiles");

// Apply tile effects
var _moveSpeed = movementSpeed;
var _acc = acc;
var _fric = fric;

if (_onGround) {
	switch(tile_at_position(x, y + 1, "Tiles")) {
		case Tile.slime:
			_moveSpeed *= .5;
			break;
		case Tile.ice:
			_moveSpeed += 0.1;
			_acc = .2;
			_fric = .15;
			break;
	}
}

// Acceleration and friction
var _hspd = (key_right - key_left) * _moveSpeed;
if (_hspd != 0) hspd = approach(hspd, _hspd, acc);
else hspd = lerp(hspd, 0, _fric);

// Apply gravity in air and check for jump on ground
if (!_onGround)
	vspd = min(vspd + grav, vspdMax);
else if (key_jump)
	vspd = -jumpSpeed;

#region Collisions
	
if (tile_meeting(x + hspd, y, "Tiles")) {
	x = (hspd > 0) ? floor(x) : ceil(x);
	var _sign = sign(hspd);
	while (!tile_meeting(x + _sign, y, "Tiles")) x += _sign;
	hspd = 0;
}
x += hspd;

if (tile_meeting(x, y + vspd, "Tiles")) {
	y = (vspd > 0) ? floor(y) : ceil(y);
	var _sign = sign(vspd);
	while (!tile_meeting(x, y + _sign, "Tiles")) y += _sign;
	vspd = 0;
}
y += vspd;

if (_hspd != 0) xscale = sign(_hspd);
else image_index = 0;

#endregion