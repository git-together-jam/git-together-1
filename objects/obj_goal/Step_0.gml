/// @description Set variables for drawing

if (!won) part_particles_create(
	systemDreamy,
	(bbox_left + bbox_right)/2,
	(bbox_top + bbox_bottom)/2 + random_range(-12, 12),
	partDreamy, 3);
else switch (won) {
	case 1:
		var _offset = sprite_get_height(playerSpriteIndex) - sprite_get_yoffset(playerSpriteIndex) - 1;
		if (point_distance(playerSpriteX, playerSpriteY + _offset, x, y) > 0.2) {
			playerSpriteX = lerp(playerSpriteX, x, 0.2);
			playerSpriteY = lerp(playerSpriteY + _offset, y, 0.2) - _offset;
		} else {
			won++;
		}
		break;
	case 2:
		if (playerAlpha > 0) playerAlpha -= 0.05;
		else won++;
		break;
	case 3:
		if (bbox_top + doorClose < bbox_bottom) {
			doorClose += 2;
		} else {
			instance_destroy();
			// Victory code needed
		}
		break;
}