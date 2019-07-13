/// @description Add segment

gateSegments[currentIndex] = instance_create_layer(
	x + (currentIndex*sprite_width)*horizontal,
	y + (currentIndex*sprite_width)*(!horizontal),
	layer, obj_gate_segment
);
gateSegments[currentIndex].image_index = horizontal;
currentIndex++;

audio_play_sound(snd_gate, 10, false);