var collider = argument0;

if(place_meeting(x + hspd,y,collider))
{
	var breakcount = 0;
	while(!place_meeting(x + sign(hspd),y,collider))
	{
		x += sign(hspd);
		if(breakcount++ > abs(hspd))
			break;
	}
	hspd = 0;
}


if(place_meeting(x,y + vspd,collider))
{
	var breakcount = 0;
	while(!place_meeting(x,y + sign(vspd),collider))
	{
		y += sign(vspd);
		if(breakcount++ > abs(vspd))
			break;
	}
	vspd = 0;
}
