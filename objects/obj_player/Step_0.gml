/// @desc Player logic
image_speed = (global.GameState == GameState.play);

// Don't do anything when not in play mode.
if (global.GameState != GameState.play) exit;


// States
switch (state) {
	case PlayerState.normal:
		player_state_normal();
		break;
}

// Player trails
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

