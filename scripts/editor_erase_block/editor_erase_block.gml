var _x = argument0;
var _y = argument1;

// Block is already erased, so stop!
if (global.StageGrid[# _x, _y] == WorldCell.void) {
	return;
}

var previous_block_id = global.StageGrid[# _x, _y];
global.StageGrid[# _x, _y] = WorldCell.void;

// Make the erased block available again.
var num_of_blocks = ds_list_size(available_blocks);
for (var i = 0; i < num_of_blocks; i ++) {
	var _block = available_blocks[|i];
	if (_block[?"id"] == previous_block_id) {
		_block[?"num"] ++;
		return;
	}
}

// Looks like it's not yet present in available blocks, so create anew.
var block_entry = ds_map_create();
ds_map_add(block_entry, "id", previous_block_id);
ds_map_add(block_entry, "num", 1);
ds_list_add(available_blocks, block_entry);
//ds_list_mark_as_map(available_blocks, ds_list_size(available_blocks)-1);

// And select it if needed.
if (is_undefined(global.SelectedBlock)) {
	global.SelectedBlock = available_blocks[|0];
}