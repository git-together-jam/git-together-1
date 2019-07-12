/// @desc Player logic

// Die if below the map
if (y - sprite_yoffset > room_height) player_die();

// Stop animation when not in play mode
image_speed = (global.GameState == GameState.play);

// Don't do anything when not in play mode.
if (global.GameState != GameState.play) exit;

#region Input

moveDir = check_input(Input.move_right) - check_input(Input.move_left);

#endregion

#region States
switch (state) {
	case PlayerState.on_ground:
		player_state_on_ground();
		break;
	case PlayerState.in_air:
		player_state_in_air();
		break;
	case PlayerState.dead:
		hspd = 0;
		vspd = 0;
		break;
}
#endregion

#region Collisions
	
if (solid_meeting(x + hspd, y)) {
	x = (hspd > 0) ? floor(x) : ceil(x);
	var _sign = sign(hspd);
	while (!solid_meeting(x + _sign, y)) x += _sign;
	hspd = 0;
}

x += hspd;

if (solid_meeting(x, y + vspd)) {
	y = (vspd > 0) ? floor(y) : ceil(y);
	var _sign = sign(vspd);
	while (!solid_meeting(x, y + _sign)) y += _sign;
	vspd = 0;
}

y += vspd;

#endregion

#region Player trails
var _trailSize = ds_list_size(trail) ;
if(_trailSize > 0)
{
	var _trailEnd = trail[| _trailSize - 1];
}

if(_trailSize == 0 || distance_to_point(_trailEnd[? "x"], _trailEnd[? "y"]) > 16)
{
	_trailEnd = ds_map_create();
	ds_map_add(_trailEnd, "x", x);
	ds_map_add(_trailEnd, "y", y);
	ds_map_add(_trailEnd, "sprite_index", sprite_index);
	ds_map_add(_trailEnd, "image_index", image_index);
	ds_map_add(_trailEnd, "image_xscale", xscale);
	ds_list_add_map(trail, _trailEnd);
}

if (_trailSize > 10) ds_list_delete(trail, 0);
#endregion

#region Animation

// Face direction for animation
if (moveDir != 0) faceDir = moveDir;

// Flip the player when changing gravity direction
if (image_yscale != gravDir && (vspd * gravDir > fallingThreshold))
	image_yscale = gravDir;

switch(state) {
	case PlayerState.on_ground:
		#region On ground	
		if (moveDir == 0) {	
			// Idle sprite
			if (faceDir == 1)
				sprite_index = spr_ed_idle_right;
			else if (faceDir == -1)
				sprite_index = spr_ed_idle_left;		
		} else {
			// Walking sprite
			if (faceDir == 1)
				sprite_index = spr_ed_walking_right;
			else if (faceDir == -1)
				sprite_index = spr_ed_walking_left;	
		}		
		break;
		#endregion
	case PlayerState.in_air:
		#region In air
		if (vspd <= fallingThreshold) {
			// Jumping sprite
			if (faceDir == 1)
				sprite_index = spr_ed_jumping_right;
			else if (faceDir == -1)
				sprite_index = spr_ed_jumping_left;
		} else {
			// Falling sprite
			if (faceDir == 1)
				sprite_index = spr_ed_falling_right;
			else if (faceDir == -1)
				sprite_index = spr_ed_falling_left;
		}
		break;
		#endregion
}

#endregion