/// @description Complete stage

if (progressor) {
	var rm_name = room_get_name(room);
	progress_complete_stage(rm_name);
}

room_goto(rm_stage_selection);