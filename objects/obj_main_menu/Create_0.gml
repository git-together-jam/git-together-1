///@description Create the main menu

// Center the camera.
with (obj_camera) {
	x = room_width div 4;
	y = room_height div 2;
}

//Buttons
var offset_x = 20;
var offset_y = 63;
var vspacing = 27;
var _self = id;

var start_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (start_btn) {
	text = "Start game";
	scope = _self;
	user_event = 0;
}
offset_y += vspacing;

var opt_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (opt_btn) {
	text = "Options";
	scope = _self;
	user_event = 3;
}
offset_y += vspacing;

var instructions_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (instructions_btn) {
	text = "How to play?";
	scope = _self;
	user_event = 1;
}
offset_y += vspacing;

var quit_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (quit_btn) {
	text = "Quit";
	scope = _self;
	user_event = 2;
}
offset_y += 24;

var menu_btn = instance_create_layer(425, 120, "Instances", obj_button_large)
with (menu_btn) {
	text = "Main Menu";
	scope = _self;
	user_event = 4;
	lerpy = false;
}

// Controller Support
gp_enabled = obj_input_manager.gp_enabled;

if (gp_enabled) {
	gp_choices = [
		start_btn,
		instructions_btn,
		quit_btn,
	];
	gp_selection = 0;
	gp_flicked = false;
}