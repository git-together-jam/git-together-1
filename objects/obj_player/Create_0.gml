movementSpeed = 2;

xvel = 0;
yvel = 0;
yvelMax = 12;
jvel = 8;		// Jump velocity

rightCommand = false;
leftCommand = false;
jumpCommand = false;

grav = .6;

state = undefined;
player_state_set(PlayerState.game_controlled);