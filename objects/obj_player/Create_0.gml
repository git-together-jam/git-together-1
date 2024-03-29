// Movement speed variables
movementSpeed = 2.1;
jumpSpeed = 5;
fallSpeed = 1; // gravity multiplier

wallJumpSpeed_x = 2;
wallJumpSpeed_y = 4.5;
wallJumpDelay = 6;
wallJumpTimer = 0;

acc = .4; // acceleration
fric = .12; // base friction, used in air
fricGround =.3; // base ground friction

grav = .35;
gravDir = 1; // gravity direction
gravDirSmooth = 1; //gravity direction for smooth gravity transitions
gravChangeSpeed = 2 / (room_speed * 1.5); // How fast switching gravity direction is
fallingThreshold = .5; // vspd threshold before flipping yscale

// Velocity
hspd = 0;
vspd = 0;
vspdMax = 9;
vspdMax_slime = 5;

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