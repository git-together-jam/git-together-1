///@description Create the main menu

// Center the camera.
with (obj_camera) {
	x = room_width / 2;
	y = room_height / 2;
}

var offset_x = room_width / 2;
var offset_y = 80;
var vspacing = 24;
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


fullscreen_btn = instance_create_layer(offset_x, offset_y, "Instances", obj_button_large)
with (fullscreen_btn) {
	text = "Fullscreen ON";
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