xvel = (
	(keyboard_check(vk_right) || keyboard_check(ord("D"))) -
	(keyboard_check(vk_left ) || keyboard_check(ord("A")))
) * movementSpeed;

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) yvel = -jvel;

if (yvel < yvelMax) yvel += grav;
	else yvel = yvelMax;

#region Move collide world
	
if (tile_meeting(x + xvel, y, "Tiles")) {
	var _sign = sign(xvel);
	while (!tile_meeting(x + _sign, y, "Tiles")) x += _sign;
	xvel = 0;
}
x += xvel;

if (tile_meeting(x, y + yvel, "Tiles")) {
	var _sign = sign(yvel);
	while (!tile_meeting(x, y + _sign, "Tiles")) y += _sign;
	yvel = 0;
}
y += yvel;
	
#endregion