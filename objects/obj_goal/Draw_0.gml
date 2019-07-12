// Draw particles
part_system_drawit(systemDreamy);

// Draw door
if (bbox_top + doorClose < bbox_bottom) {
	draw_set_color(c_white);
	draw_rectangle(
		bbox_left, bbox_top + doorClose,
		bbox_right, bbox_bottom,
		false
	);
}

// Draw player
if (won) {
	draw_set_alpha(playerAlpha);
	draw_sprite(
		playerSpriteIndex, playerImageIndex,
		playerSpriteX, playerSpriteY
	);
	draw_set_alpha(1);
}