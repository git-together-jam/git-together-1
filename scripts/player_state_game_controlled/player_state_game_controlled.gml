if place_meeting(x,y+1,obj_slime){
	fric=.75
	movementSpeed=1
}
if place_meeting(x,y+1,obj_ice){
	fric=.25
} else {fric=.5;movementSpeed=2}


if rightCommand - leftCommand !=0{ //Hey if we are moving do regular moving
    xvel = (rightCommand - leftCommand) * movementSpeed;
} else {
    xvel = lerp(xvel*movementSpeed,0,fric) //If we aren't moving, then just slow down our movement until we stop based on fric
}
//xvel = (rightCommand - leftCommand) * movementSpeed;

var _scaleSign = sign(xvel);
_scaleSign = _scaleSign == 0 ? image_xscale : _scaleSign 
image_xscale = _scaleSign;

if (jumpCommand) yvel = -jvel;

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

if (jumpCommand) jumpCommand = false;

#endregion