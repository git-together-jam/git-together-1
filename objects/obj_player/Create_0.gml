movementSpeed = 2.3;
jumpSpeed = 6;

acc = .4; // acceleration
fric = .4; // base friction

grav = .55;

hspd = 0;
vspd = 0;
vspdMax = 12;

state = undefined;
player_state_set(PlayerState.normal);

trail = ds_list_create();

xscale = 1;
yscale = 1;
