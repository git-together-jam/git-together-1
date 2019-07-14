/// @description Remove segment

currentIndex--;
instance_destroy(gateSegments[currentIndex]);
gateSegments[currentIndex] = noone;

if (point_distance(x, y, PLAYER.x, PLAYER.y) < 180) {
	audio_play_sound(snd_gate, 10, false);
}