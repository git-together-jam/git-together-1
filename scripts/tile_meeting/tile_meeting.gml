/// @desc tile__meeting(x, y, layer);
/// @func tile__meeting
/// @arg x
/// @arg y
/// @arg layer

var _xx, _yy, _tilemap, _xp, _yp, _meeting;

_xx = argument0;
_yy = argument1;
_tilemap = layer_tilemap_get_id(argument2);

//Save our current position
_xp = x;
_yp = y;

//Move to the position where we want to check for a tile collision
x = _xx;
y = _yy;

//Check for collision on all four corners of the bounding box
_meeting =		tilemap_get_at_pixel(_tilemap, bbox_right, bbox_top)
				||
				tilemap_get_at_pixel(_tilemap, bbox_right, bbox_bottom)
				||
				tilemap_get_at_pixel(_tilemap, bbox_left, bbox_top)
				||
				tilemap_get_at_pixel(_tilemap, bbox_left, bbox_bottom);

//Move back to the original position
x = _xp;
y = _yp;

//Return wether or not there was a collision
return(_meeting);