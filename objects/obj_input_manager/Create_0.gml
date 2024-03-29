// Create a global input list.
global.Input = ds_list_create();
repeat (20) ds_list_add(global.Input, false);

// Gamepad support, hell yeah!
gp_enabled = ALLOW_GAMEPAD && gamepad_is_supported() && gamepad_is_connected(0);
gp_threshold = .2;

// Store gamepad axis direction and length.
global.GamepadAxisDir = 0;
global.GamepadAxisLen = 0;
global.GamepadAxisH = 0;
global.GamepadAxisV = 0;