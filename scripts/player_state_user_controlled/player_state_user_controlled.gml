xvel = (
	(keyboard_check(vk_right) || keyboard_check(ord("D"))) -
	(keyboard_check(vk_left ) || keyboard_check(ord("A")))
) * movementSpeed;

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("Z"))) yvel = -jvel;

if (yvel < yvelMax) yvel += grav;
	else yvel = yvelMax;

#region Move collide world
	
if (world_meeting(x + xvel, y)) {
	var _sign = sign(xvel);
	while (!world_meeting(x + _sign, y)) x += _sign;
	xvel = 0;
}
x += xvel;

if (world_meeting(x, y + yvel)) {
	var _sign = sign(yvel);
	while (!world_meeting(x, y + _sign)) y += _sign;
	yvel = 0;
}
y += yvel;
	
#endregion