// Movement speed variables
movementSpeed = 2.3;
jumpSpeed = 6;
fallSpeed = 1; // gravity multiplier

acc = .4; // acceleration
fric = .4; // base friction, used in air
fricGround =.4; // base ground friction

grav = .55;
gravDir = 1; // gravity direction
gravDirSmooth = 1; //gravity direction for smooth gravity transitions
gravChangeSpeed = 2 / (room_speed * 1.5); // How fast switching gravity direction is
fallingThreshold = .5; // vspd threshold before flipping yscale

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
moveDir = 0; // moving right or left
faceDir = 0; // facing direction for animation
// Checkpoint
startX = x;
startY = y;
checkpoint = noone;