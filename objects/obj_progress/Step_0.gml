/// @description Controller Support
if (gp_enabled) {
	if (global.GamepadAxisLen > 0.5 && !gp_flicked) {
		gp_flicked = true;
		//Find all nearby instances
		ds_list_clear(list);
		var _select = gp_selection;
		with(gp_selection) {
			collision_circle_list(x,y,9999,obj_button_stage,false,true,other.list,true);
			with(other.list[|angle_closest(global.GamepadAxisDir,
				point_direction(x,y,other.list[|0].x,other.list[|0].y),
				point_direction(x,y,other.list[|1].x,other.list[|1].y),
				point_direction(x,y,other.list[|2].x,other.list[|2].y),
				point_direction(x,y,other.list[|3].x,other.list[|3].y))]) {
				_select = id;
			}
		}
		gp_selection = _select;
		audio_play_sound(snd_hover, 10, false);
	} else if (global.GamepadAxisLen < 0.2) {
		gp_flicked = false;
	}
	// Alter buttons accordingly
	var _press = check_input(Input.primary_action);
	with(obj_button_stage) {
		if (other.gp_selection == id) {
			mouse_over = true;
			image_index = 1;
			if (_press) {
				event_perform(ev_mouse,ev_left_press);
			}
		} else {
			mouse_over = false;
			image_index = 0;
		}
	}
}