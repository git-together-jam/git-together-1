ds_list_set(global.Input, Input.move_left, keyboard_check(ord("A")) || keyboard_check(vk_left));
ds_list_set(global.Input, Input.move_right, keyboard_check(ord("D")) || keyboard_check(vk_right));
ds_list_set(global.Input, Input.jump, keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up));

ds_list_set(global.Input, Input.primary_action, mouse_check_button_pressed(mb_left));
ds_list_set(global.Input, Input.secondary_action, mouse_check_button_pressed(mb_right));
ds_list_set(global.Input, Input.select_previous, keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || mouse_wheel_up());
ds_list_set(global.Input, Input.select_next, keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || mouse_wheel_down());
