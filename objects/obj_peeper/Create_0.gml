/// @description Wow dude
// You can write your code in this editor. Cool huh?
// This code is copied instead of parented because of collision

bouncePower = 8.6; // Bounce power

stoptime = 20; // Time to stand still after shooting the player into the sky
s_countdown = 0;

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
state = "walk"; // What state the little buddy is in