// Do I progress the game for this stage?
progressor = true;


won = false;

playerSpriteX = 0;
playerSpriteY = 0;

playerSpriteIndex = -1;
playerImageIndex = -1;

playerAlpha = 1;
doorClose = 0;


systemDreamy = part_system_create();
part_system_automatic_draw(systemDreamy, false);

partDreamy = part_type_create();
part_type_shape(partDreamy, pt_shape_disk);
part_type_scale(partDreamy, 0.15, 0.15);
part_type_size(partDreamy, 1, 1, -0.02, 0);
part_type_direction(partDreamy, 0, 180, 0, 1);
part_type_colour2(partDreamy, c_white, $805200);

part_type_speed(partDreamy, 0.5, 0.6, 0, 0);

part_type_alpha2(partDreamy, 1, 0);
part_type_life(partDreamy, 50, 70);