var _x = argument0;
var _y = argument1;

// Stop if outside editable area
var _canEdit = tile_at_cell("Editable_Area", _x, _y);
if (!_canEdit) return;

var _lay_id = layer_get_id("Tiles");
var _map_id = layer_tilemap_get_id(_lay_id);
var _data = tilemap_get(_map_id, _x, _y);
var _ind = tile_get_index(_data);

// No block is selected, so stop!
if (is_undefined(global.SelectedBlock)) return;

// if block isn't void, stop!
if (_ind) return;

// Block is already placed, so stop!
if (_ind == global.SelectedBlock[? "id"]) return;

tilemap_set(
	_map_id,
	tile_set_index(_data, global.SelectedBlock[? "id"]),
	_x, _y
);
global.SelectedBlock[? "num"]--;

// Remove blocks if no more left.
if (global.SelectedBlock[? "num"] == 0) {
	var i = ds_list_find_index(available_blocks, global.SelectedBlock);
	ds_map_destroy(available_blocks[| i]);
	ds_list_delete(available_blocks, i);
	
	global.SelectedBlock = undefined;
	if (ds_list_size(available_blocks) > 0) {
		global.SelectedBlock = available_blocks[| 0];
	}
}