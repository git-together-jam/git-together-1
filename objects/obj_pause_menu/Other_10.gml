/// @description Continue game

instance_deactivate_object(obj_button_large);
instance_activate_object(obj_game_object);

is_paused = false;
global.GameState = return_state;