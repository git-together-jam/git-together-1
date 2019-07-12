var _x = argument0;
var _y = argument1;

// Cursor is outside editable area, so stop!
var _canEdit = disable_editable_areas || tile_at_cell("Editable_Area", _x, _y);
if (!_canEdit) return;

var _lay_id = layer_get_id("Tiles");
var _map_id = layer_tilemap_get_id(_lay_id);
var _data = tilemap_get(_map_id, _x, _y);
var _ind = tile_get_index(_data);

// Tile is already erased, so stop!
if (!_ind) return;

var previous_block_id = _ind;
tilemap_set(_map_id, tile_set_index(_data, 0), _x, _y);

// Make the erased tile available again.
if (available_tiles[previous_block_id] != -1)
	available_tiles[previous_block_id] ++;

// And select it if needed.
if (is_undefined(global.SelectedTile)) {
	global.SelectedTile = previous_block_id;
}