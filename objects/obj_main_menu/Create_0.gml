///@description Create the main menu

// Center the camera.
with (obj_camera) {
	x = room_width div 2;
	y = room_height div 2;
}

//Buttons
var offset_x = 20;
var offset_y = 70;
var vspacing = 27;
var _self = self;

var start_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (start_btn) {
	text = "Start game";
	scope = _self;
	user_event = 0;
}
offset_y += vspacing;

var instructions_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (instructions_btn) {
	text = "How to play?";
}
offset_y += vspacing;

var quit_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (quit_btn) {
	text = "Quit";
	scope = _self;
	user_event = 1;
}
offset_y += 24;

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