var _x = argument0;
var _y = argument1;

var _lay_id = layer_get_id("Tiles");
var _map_id = layer_tilemap_get_id(_lay_id);
var _data = tilemap_get(_map_id, _x, _y);
var _ind = tile_get_index(_data);

// Block is already erased, so stop!
if (!_ind) return;

var previous_block_id = _ind;
tilemap_set(_map_id, tile_set_index(_data, 0), _x, _y);

// Make the erased block available again.
var num_of_blocks = ds_list_size(available_blocks);
for (var i = 0; i < num_of_blocks; i ++) {
	var _block = available_blocks[| i];
	if (_block[? "id"] == previous_block_id) {
		_block[? "num"]++;
		return;
	}
}

// Looks like it's not yet present in available blocks, so create anew.
var block_entry = ds_map_create();
ds_map_add(block_entry, "id", previous_block_id);
ds_map_add(block_entry, "num", 1);
ds_list_add_map(available_blocks, block_entry);

// And select it if needed.
if (is_undefined(global.SelectedBlock)) {
	global.SelectedBlock = available_blocks[| 0];
}