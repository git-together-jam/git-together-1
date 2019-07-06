enum PlayerState {
	idle,
	user_controlled
}

movementSpeed = 2;

xvel = 0;
yvel = 0;
yvelMax = 12;
jvel = 8;		// Jump velocity

grav = .6;

state = undefined;
player_state_set(PlayerState.user_controlled);