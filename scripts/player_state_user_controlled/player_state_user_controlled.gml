// Input
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left ) || keyboard_check(ord("A"));
var key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

hspd = (key_right - key_left) * movementSpeed;

// Apply gravity in air and check for jump on ground
if (!tile_meeting(x, y + 1, "Tiles"))
	vspd = min(vspd + grav, vspdMax);
else if (key_jump)
	vspd = -jumpSpeed;

#region Collisions
	
if (tile_meeting(x + hspd, y, "Tiles")) {
	x = floor(x);
	var _sign = sign(hspd);
	while (!tile_meeting(x + _sign, y, "Tiles")) x += _sign;
	hspd = 0;
}
x += hspd;

if (tile_meeting(x, y + vspd, "Tiles")) {
	y = floor(y);
	var _sign = sign(vspd);
	while (!tile_meeting(x, y + _sign, "Tiles")) y += _sign;
	vspd = 0;
}
y += vspd;
	
#endregion