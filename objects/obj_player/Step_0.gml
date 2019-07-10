/// @desc Player logic

// Stop animation when not in play mode
image_speed = (global.GameState == GameState.play);

// Don't do anything when not in play mode.
if (global.GameState != GameState.play) exit;

#region Input

key_left = keyboard_check(LEFT_KEY) || keyboard_check(vk_left);
key_right = keyboard_check(RIGHT_KEY) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(JUMP_KEY) || keyboard_check_pressed(vk_up);

#endregion

#region States
switch (state) {
	case PlayerState.idle:
		player_state_idle();
		break;
	case PlayerState.walking:
		player_state_walking();
		break;
	case PlayerState.in_air:
		player_state_in_air();
		break;
	case PlayerState.hurt:
		player_state_hurt();
		break;
	case PlayerState.normal:
		player_state_normal();
		break;
}
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

// Animation

