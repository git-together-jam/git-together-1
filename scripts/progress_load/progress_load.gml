if (file_exists(PROGRESS_FILE_NAME)) {
	
	// Load existing progress file.
	var buffer = buffer_load(PROGRESS_FILE_NAME);
	var json_string = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);

	global.progress = json_decode(json_string);
	return;
}

// Create a new progress file.
var _progress = ds_map_create();
ds_map_add_list(_progress, "completed", ds_list_create());

global.progress = _progress;