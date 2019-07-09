/// @description Delete data structures

if (ds_exists(available_blocks, ds_type_list)) {
	for (var i = 0; i < ds_list_size(available_blocks); i++) {
		ds_grid_destroy(available_blocks[| i]);
	}
	ds_list_destroy(available_blocks);
}
if (ds_exists(global.SelectedBlock, ds_type_grid)) {
	ds_grid_destroy(global.SelectedBlock);
}