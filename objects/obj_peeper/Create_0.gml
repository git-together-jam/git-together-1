/// @description Wow dude
// You can write your code in this editor. Cool huh?

// The snort stuff is from the previous enemy with similar code that got deleted.
// RIP Tooty.

bouncePower = 7; // Bounce power

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