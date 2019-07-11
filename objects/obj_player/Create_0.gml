// Movement speed variables
movementSpeed = 2.3;
jumpSpeed = 6;

acc = .4; // acceleration
fric = .4; // base friction, used in air
fricGround =.4; // base ground friction

grav = .55;

// Velocity
hspd = 0;
vspd = 0;
vspdMax = 12;

// State
state = PlayerState.on_ground;

// Ds_list for player trail
trail = ds_list_create();

// Scale
xscale = 1;
yscale = 1;

// Input
key_left = false;
key_right = false;
key_jump = false;
moveDir = 0; // moving right or left
faceDir = 0; // facing direction for animation
