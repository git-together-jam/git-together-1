name = room_get_stage_name(stage);

var rm_name = room_get_name(stage);
if (progress_is_completed(rm_name)) {
	image_xscale = 2;
	image_yscale = 2;
}