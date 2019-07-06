if !(!instance_exists(obj_world) || !obj_world.editorActive) exit;

switch (state) {
	case PlayerState.user_controlled:
		player_state_user_controlled();
		break;
}