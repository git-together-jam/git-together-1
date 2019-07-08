/// @description Insert description here

var num_of_stages = ds_list_size(global.Stages);

for (var i = 0; i < num_of_stages; i ++) {
	var _stage = ds_list_find_value(global.Stages, i);
	
	var stage_btn = instance_create_depth(
		_stage[?"selection_x"],
		_stage[?"selection_y"],
		depth - 1,
		obj_button_stage
	);
	
	with (stage_btn) {
		stage = _stage;
	}
	
}