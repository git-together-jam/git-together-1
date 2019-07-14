/// @description Add segment

gateSegments[currentIndex] = instance_create_layer(
	x + (currentIndex*sprite_width)*horizontal,
	y + (currentIndex*sprite_width)*(!horizontal),
	layer, obj_gate_segment
);
gateSegments[currentIndex].image_index = horizontal;
currentIndex++;

if (point_distance(x, y, PLAYER.x, PLAYER.y) < 180) {
	audio_play_sound(snd_gate, 10, false);
}