/// @description Destroy block list

if (ds_exists(available_blocks, ds_type_list)) {
	ds_list_destroy(available_blocks);
}