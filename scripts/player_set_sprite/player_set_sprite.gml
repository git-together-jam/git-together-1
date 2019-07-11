/// @func player_set_sprite(sprite, reset_subimage)
/// @arg sprite
/// @arg reset_subimage

var _sprite = argument0;
var _reset = argument1;

sprite_index = _sprite;
if (_reset) image_index = 0;