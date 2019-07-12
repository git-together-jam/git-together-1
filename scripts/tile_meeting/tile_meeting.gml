/// @desc tile_meeting(x, y, layer [, tileType]);
/// @func tile_meeting
/// @arg x
/// @arg y
/// @arg layer
/// @arg [tileType]

var _xx, _yy, _layer, _tilemap, _tileType, _xp, _yp, _meeting;

_xx = argument[0];
_yy = argument[1];
_layer = argument[2];
if (argument_count > 3) _tileType = argument[3];
else _tileType = TileType.any;

_tilemap = layer_tilemap_get_id(_layer);


//Save our current position
_xp = x;
_yp = y;

//Move to the position where we want to check for a tile collision
x = _xx;
y = _yy;

//Check for collision on all four corners of the collision mask
if (_tileType == TileType.any)
	_meeting =	tilemap_get_at_pixel(_tilemap, bbox_left, bbox_top)
				||
				tilemap_get_at_pixel(_tilemap, bbox_left, bbox_bottom)
				||
				tilemap_get_at_pixel(_tilemap, bbox_right, bbox_top)
				||
				tilemap_get_at_pixel(_tilemap, bbox_right, bbox_bottom);			
else
	_meeting =	(tile_at_position(bbox_left, bbox_top, _layer) == _tileType)
				||
				(tile_at_position(bbox_left, bbox_bottom, _layer) == _tileType)
				||
				(tile_at_position(bbox_right, bbox_top, _layer) == _tileType)
				||
				(tile_at_position(bbox_right, bbox_bottom, _layer) == _tileType);


//Move back to the original position
x = _xp;
y = _yp;

//Return wether or not there was a collision
return(_meeting);