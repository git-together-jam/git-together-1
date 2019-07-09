/// @desc tile_position(x, y, layer);
/// @func tile_position
/// @arg x
/// @arg y
/// @arg layer

var _xx, _yy, _layer, _tilemap, _tile;

_xx = argument0;
_yy = argument1;
_layer = argument2;

_tilemap = layer_tilemap_get_id(_layer);

// Get the tile at the specified pixel
_tile = tilemap_get_at_pixel(_tilemap, _xx, _yy);

// Return the tile index, or -1 if no tile was found
if (tile_get_empty(_tile))
	return -1;
else {
	return tile_get_index(_tile);
}
