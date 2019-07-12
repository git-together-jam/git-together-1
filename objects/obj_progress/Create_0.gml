var num_of_completed = ds_list_size(global.progress[?"completed"]);
txt = string(num_of_completed) + "/" + string(NUM_OF_STAGES) + " completed";
percentage = floor((num_of_completed / NUM_OF_STAGES) * 100);
bar_width = 0;

// Controller support
gp_enabled = obj_input_manager.gp_enabled;

list = ds_list_create();

if (gp_enabled) {
	gp_selection = instance_find(obj_button_stage,0);
	gp_flicked = false;
}
