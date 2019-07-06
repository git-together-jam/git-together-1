
if (!instance_exists(obj_world) || !obj_world.editorActive) {
	
	#region Input velocity
	
	xvel = (
		(keyboard_check(vk_right) || keyboard_check(ord("D"))) -
		(keyboard_check(vk_left ) || keyboard_check(ord("A")))
	) * movementSpeed;
		   
	yvel = (
		(keyboard_check(vk_down ) || keyboard_check(ord("S"))) -
		(keyboard_check(vk_up   ) || keyboard_check(ord("W")))
	) * movementSpeed;
	
	#endregion;
	
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
	
	#endregion;
}
