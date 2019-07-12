var num_of_completed = ds_list_size(global.progress[?"completed"]);
percentage = floor((num_of_completed / NUM_OF_STAGES) * 100);

// Controller support
gp_enabled = obj_input_manager.gp_enabled;

if (gp_enabled) {
	gp_selection = instance_find(obj_button_stage,0);
	gp_flicked = false;
	list = ds_list_create();
}