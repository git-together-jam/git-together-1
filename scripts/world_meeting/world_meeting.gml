/// @desc Checks for collision with world
/// @arg x
/// @arg y

var _sx = x; x = argument0;
var _sy = y; y = argument1;

var _collision = place_meeting(x, y, obj_wall);

if (!_collision && instance_exists(obj_world)) {
	var _grid = obj_world.grid;
	var _size = obj_world.cellSize;
	
	var _r = floor(bbox_right  / _size);
	var _t = floor(bbox_top    / _size);
	var _l = floor(bbox_left   / _size);
	var _b = floor(bbox_bottom / _size);
	
	_collision |= (
		_grid[# _l, _t] != WorldCell.void ||
		_grid[# _l, _b] != WorldCell.void ||
		_grid[# _r, _b] != WorldCell.void ||
		_grid[# _r, _t] != WorldCell.void
	);
}

x = _sx;
y = _sy;

return _collision;