/// @description Do not use, broken
// You can write your code in this editor. Cool huh?

// Movement speed variables
movementSpeed = 0.6;
jumpSpeed = 6;
fallSpeed = 1;

// Velocity
hspd = 0;
vspd = 0;
vspdMax = 12;

grav = .55;

// Variables specific to this enemy
snortdir = -1; // Preferred direction to walk and snort in
state = "snort"; // What state the little buddy is in