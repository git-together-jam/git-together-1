y -= .3;

if (counter < PLAYER_DIE_TIME && image_alpha < .8) {
	image_alpha += .02;
} else if (counter > PLAYER_DIE_TIME) {
	image_alpha -= .04;
	if (image_alpha <= 0) instance_destroy();
}

counter ++;