xvel = (rightCommand - leftCommand) * movementSpeed;

if (jumpCommand) yvel = -jvel;

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

if (jumpCommand) jumpCommand = false;

#endregion