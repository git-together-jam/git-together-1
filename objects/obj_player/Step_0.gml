/// @desc Player logic

// Stop animation when not in play mode
image_speed = (global.GameState == GameState.play);

// Don't do anything when not in play mode.
if (global.GameState != GameState.play) exit;

#region Input

key_left = keyboard_check(LEFT_KEY) || keyboard_check(vk_left);
key_right = keyboard_check(RIGHT_KEY) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(JUMP_KEY) || keyboard_check_pressed(vk_up);

moveDir = key_right - key_left;

#endregion

#region States
switch (state) {
	case PlayerState.on_ground:
		player_state_on_ground();
		break;
	case PlayerState.in_air:
		player_state_in_air();
		break;
	case PlayerState.hurt:
		player_state_hurt();
		break;
}
#endregion

#region Collisions
	
if (tile_meeting(x + hspd, y, "Tiles")) {
	x = (hspd > 0) ? floor(x) : ceil(x);
	var _sign = sign(hspd);
	while (!tile_meeting(x + _sign, y, "Tiles")) x += _sign;
	hspd = 0;
}
x += hspd;

if (tile_meeting(x, y + vspd, "Tiles")) {
	y = (vspd > 0) ? floor(y) : ceil(y);
	var _sign = sign(vspd);
	while (!tile_meeting(x, y + _sign, "Tiles")) y += _sign;
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

if (moveDir != 0) faceDir = moveDir;
else image_index = 0;

switch(state) {
	case PlayerState.on_ground:
		#region On ground	
		if (moveDir == 0) {	
			// Idle sprite
			if (faceDir == 1)
				sprite_index = spr_ed_idle_right
			else if (faceDir == -1)
				sprite_index = spr_ed_idle_left;		
		} else {
			// Walking sprite
			if (faceDir == 1)
				sprite_index = spr_ed_walking_right
			else if (faceDir == -1)
				sprite_index = spr_ed_walking_left;	
		}		
		break;
		#endregion
	case PlayerState.in_air:
		#region In air
		if (vspd <= 2.5) {
			// Jumping sprite
			if (faceDir == 1)
				sprite_index = spr_ed_jumping_right
			else if (faceDir == -1)
				sprite_index = spr_ed_jumping_left;
		} else {
			// Falling sprite
			if (faceDir == 1)
				sprite_index = spr_ed_falling_right
			else if (faceDir == -1)
				sprite_index = spr_ed_falling_left;
		}
		break;
		#endregion
}

#endregion