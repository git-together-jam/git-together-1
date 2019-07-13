/// @description Remove segment

currentIndex--;
instance_destroy(gateSegments[currentIndex]);
gateSegments[currentIndex] = noone;

audio_play_sound(snd_gate, 10, false);