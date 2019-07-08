var _x = argument0;
var _y = argument1;

// No block is selected, so stop!
if (is_undefined(global.SelectedBlock)) {
	return;
}

// Block is already placed, so stop!
if (global.StageGrid[# _x, _y] == global.SelectedBlock[?"id"]) {
	return;
}

// Erase block first if not void.
if (global.StageGrid[# _x, _y] != WorldCell.void) {
	editor_erase_block(_x, _y);
}

global.StageGrid[# _x, _y] = global.SelectedBlock[?"id"];
global.SelectedBlock[?"num"] --;

// Remove blocks if no more left.
if (global.SelectedBlock[?"num"] == 0) {
	var i = ds_list_find_index(available_blocks, global.SelectedBlock);
	ds_list_delete(available_blocks, i);
	
	global.SelectedBlock = undefined;
	if (ds_list_size(available_blocks) > 0) {
		global.SelectedBlock = available_blocks[|0];
	}
}