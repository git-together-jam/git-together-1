movementSpeed = 2;
jumpSpeed = 8;

hspd = 0;
vspd = 0;
vspdMax = 12;

rightCommand = false;
leftCommand = false;
jumpCommand = false;

grav = .6;

fric = .5

state = undefined;
player_state_set(PlayerState.user_controlled);

trail = ds_list_create();
