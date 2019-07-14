/// @description Restart at checkpoint

instance_activate_object(PLAYER);
with (PLAYER) {
	player_checkpoint_restart();
}

event_user(0);