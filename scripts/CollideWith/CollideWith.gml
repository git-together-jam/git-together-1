var collider = argument0;

if(place_meeting(x + hspeed,y,collider))
{
	var breakcount = 0;
	while(!place_meeting(x + sign(hspeed),y,collider))
	{
		x += sign(hspeed);
		if(breakcount++ > abs(hspeed))
			break;
	}
	hspeed = 0;
}


if(place_meeting(x,y + vspeed,collider))
{
	var breakcount = 0;
	while(!place_meeting(x,y + sign(vspeed),collider))
	{
		y += sign(vspeed);
		if(breakcount++ > abs(vspeed))
			break;
	}
	vspeed = 0;
}
