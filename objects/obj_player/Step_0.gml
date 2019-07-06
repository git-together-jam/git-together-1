var _grounded = place_meeting(x,y+1,obj_wall);

vspd += grav;
hspd *= _grounded ? .7 : .9;

if(keyboard_check(input[? "LEFT"]))
{
	hspd -= movementSpeed;
	image_xscale = -1;
	//TODO: walk animations
}
if(keyboard_check(input[? "RIGHT"]))
{
	hspd += movementSpeed;
	image_xscale = 1;
	//TODO: walk animations
}

if(_grounded)
	jumping = false;

if(keyboard_check_pressed(input[? "JUMP"]))
{
	if(!jumping)
	{
		if(_grounded)
		{
			jumping = true;
			activeJumpForce = -jumpForce;
		}
	}
}

if(keyboard_check(input[? "JUMP"]))
{
	if(jumping && activeJumpForce< -1)
	{
		activeJumpForce *= jumpHoldMultiplier;
		vspd = activeJumpForce;
	}
	else
	{
		activeJumpForce = 0;
		fallingPostJump = true;
	}
}

if(jumping && keyboard_check_released(ord("Z")))
{
	activeJumpForce = 0;
	fallingPostJump = true;
}

if(fallingPostJump)
{
	if(_grounded)
		fallingPostJump = false;	
	vspd += jumpFallSpeed;
}

hspd = clamp(hspd,-maxHorizontalSpeed,maxHorizontalSpeed);
vspd = clamp(vspd,-maxVerticalSpeed,maxVerticalSpeed);

collide_with(obj_wall);

x += hspd;
y += vspd;

// Just for debugging so we don't just fall infinitely
if(x < 0)
	x = room_width;
if(x > room_width)
	x = 0;
	
if(y < 0)
	y = room_height;
if(y > room_height)
	y = 0;
//