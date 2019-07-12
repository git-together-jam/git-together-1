is_paused = false;
return_state = GameState.play; // The game state to return to after unpause.

var _self = self;
var _btn_depth = depth - 1;

var unpause_btn = instance_create_layer(0, 0, "Statics", obj_button_large)
with (unpause_btn) {
	text = "Continue game";
	scope = _self;
	user_event = 0;
	depth = _btn_depth;
}

var quit_btn = instance_create_layer(0, 0, "Statics", obj_button_large)
with (quit_btn) {
	text = "Back to main menu";
	scope = _self;
	user_event = 1;
	depth = _btn_depth;
}

// Store all buttons in a local list.
buttons = ds_list_create();
ds_list_add(buttons, unpause_btn, quit_btn);

instance_deactivate_object(obj_button_large);

// Controller Support
gp_enabled = obj_input_manager.gp_enabled;

if (gp_enabled) {
	gp_choices = [
		unpause_btn,
		quit_btn,
	];
	gp_selection = 0;
	gp_flicked = false;
}