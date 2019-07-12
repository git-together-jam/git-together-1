/// @description Controller Support
if (gp_enabled) {
	if (instance_exists(obj_main_menu)) {
		if (obj_main_menu.gp_choices[obj_main_menu.gp_selection] == id) {
			mouse_over = true;
			image_index = 1;
			if (check_input(Input.primary_action)) {
				event_perform(ev_mouse,ev_left_press);
			}
		} else {
			mouse_over = false;
			image_index = 0;
		}
	}
}