///@description Create the main menu

// Center the camera.
with (obj_camera) {
	x = room_width div 2;
	y = room_height div 2;
}

//Controller Support
gp_enabled = ALLOW_GAMEPAD && gamepad_is_supported() && gamepad_is_connected(0);

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
	gp_enabled = other.gp_enabled;
}
offset_y += vspacing;

var instructions_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (instructions_btn) {
	text = "How to play?";
	gp_enabled = other.gp_enabled;
}
offset_y += vspacing;

var quit_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (quit_btn) {
	text = "Quit";
	scope = _self;
	user_event = 1;
	gp_enabled = other.gp_enabled;
}
offset_y += 24;

//Controller support
if (gp_enabled) {
	gp_choices = [
		start_btn,
		instructions_btn,
		quit_btn,
	];
	gp_selection = 0;
	gp_flicked = false;
}