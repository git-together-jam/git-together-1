
hspeed = 0;
vspeed = 0;

if(keyboard_check(vk_left))
{
	hspeed = -movementSpeed;
}


if(keyboard_check(vk_right))
{
	hspeed = movementSpeed;
}


if(keyboard_check(vk_up))
{
	vspeed = -movementSpeed;
}


if(keyboard_check(vk_down))
{
	vspeed = movementSpeed;
}

collide_with(obj_wall);
