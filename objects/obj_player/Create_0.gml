// Movement speed variables
movementSpeed = 2.3;
jumpSpeed = 6;

acc = .4; // acceleration
fric = .4; // base friction

grav = .55;

// Velocity
hspd = 0;
vspd = 0;
vspdMax = 12;

// States
state = undefined;
player_state_set(PlayerState.normal);

trail = ds_list_create();

// Scale
xscale = 1;
yscale = 1;

// Input
key_left = false;
key_right = false;
key_jump = false;
