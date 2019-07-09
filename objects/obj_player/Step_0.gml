if (instance_exists(obj_world) && obj_world.editorActive) exit;

switch (state) {
	case PlayerState.user_controlled:
		player_state_user_controlled();
		break;
}
var _trailSize = ds_list_size(trail) ;
if(_trailSize > 0)
{
		var _trailEnd = trail[| _trailSize-1];
}

if(_trailSize == 0 || distance_to_point(_trailEnd[? "x"], _trailEnd[? "y"]) > 16)
{
	trail[| _trailSize] = ds_map_create();
	_trailEnd = trail[| _trailSize];
	_trailEnd[? "x"] = x;
	_trailEnd[? "y"] = y;
	_trailEnd[? "image_index"] = image_index;
	_trailEnd[? "image_xscale"] = image_xscale;
}

if(_trailSize > 10)
	ds_list_delete(trail,0);

