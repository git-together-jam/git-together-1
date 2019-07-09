/// @description Destroy available tiles list

if (ds_exists(available_tiles, ds_type_list)) {
	ds_list_destroy(available_tiles);
}