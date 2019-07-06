movementSpeed = 2;

maxHorizontalSpeed = 4;
maxVerticalSpeed = 15;

hspd = 0;
vspd = 0;
grav = 1;

jumping = false;
jumpHoldMultiplier = 0.85;
fallingPostJump = false;
activeJumpForce = 0;
jumpForce = 10;
jumpFallSpeed = .05;


input = ds_map_create();

input[? "LEFT"] = vk_left;
input[? "RIGHT"] = vk_right;
input[? "UP"] = vk_up;
input[? "DOWN"] = vk_down;
input[? "JUMP"] = ord("Z");