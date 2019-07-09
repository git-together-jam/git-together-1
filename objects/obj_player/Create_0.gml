movementSpeed = 2;
jumpSpeed = 8;

hspd = 0;
vspd = 0;
vspdMax = 12;

grav = .6;

fric = .5

state = undefined;
player_state_set(PlayerState.normal);

trail = ds_list_create();

xscale = 1;
yscale = 1;
