/// @arg name

if (!progress_is_completed(argument0)) {
	ds_list_add(global.progress[?"completed"], argument0);
	progress_save();
}