// Move left.
var move_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
if (gp_enabled && !move_left) move_left = gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -gp_treshold;
ds_list_set(global.Input, Input.move_left, move_left);

// Move right.
var move_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
if (gp_enabled && !move_right) move_right = gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > gp_treshold;
ds_list_set(global.Input, Input.move_right, move_right);

// Jump.
var jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
if (gp_enabled && !jump) jump = gamepad_button_check_pressed(0, gp_face1);
ds_list_set(global.Input, Input.jump, jump);

// Primary action.
var primary_action = mouse_check_button(mb_left);
if (gp_enabled && !primary_action) primary_action = gamepad_button_check_pressed(0, gp_face3);
ds_list_set(global.Input, Input.primary_action, primary_action);

// Secondary action.
var secondary_action = mouse_check_button(mb_right);
if (gp_enabled && !secondary_action) secondary_action = gamepad_button_check_pressed(0, gp_face2);
ds_list_set(global.Input, Input.secondary_action, secondary_action);

// Select previous.
var select_previous = keyboard_check_pressed(ord("Q")) || mouse_wheel_up();
if (gp_enabled && !select_previous) select_previous = gamepad_button_check_pressed(0, gp_shoulderl);
ds_list_set(global.Input, Input.select_previous, select_previous);

// Select next.
var select_next = keyboard_check_pressed(ord("E")) || mouse_wheel_down();
if (gp_enabled && !select_next) select_next = gamepad_button_check_pressed(0, gp_shoulderr);
ds_list_set(global.Input, Input.select_next, select_next);


if (!gp_enabled) exit;
	
// Gamepad axis.
var haxis = gamepad_axis_value(0, gp_axislh);
var vaxis = gamepad_axis_value(0, gp_axislv);

if (abs(haxis) < gp_treshold && abs(vaxis) < gp_treshold) {
	haxis = 0;
	vaxis = 0;
}
	
global.GamepadAxisDir = point_direction(0, 0, haxis, vaxis);
global.GamepadAxisLen = point_distance(0 ,0, haxis, vaxis);