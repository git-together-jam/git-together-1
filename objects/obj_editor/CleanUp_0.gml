/// @description Delete data structures

if (ds_exists(available_blocks, ds_type_list)) {
	ds_list_destroy(available_blocks);
}
if (ds_exists(global.SelectedBlock, ds_type_grid)) {
	ds_grid_destroy(global.SelectedBlock);
}