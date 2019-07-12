if (ds_exists(buttons, ds_type_list)) {
	var num_of_buttons = ds_list_size(buttons);
	for (var i = 0; i < num_of_buttons; i ++) {
		instance_destroy(buttons[|i]);
	}
	
	ds_list_destroy(buttons);
}