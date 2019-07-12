/// @description Check for player collision

var _lastMeeting = playerMeeting;
playerMeeting = place_meeting(x, y, PLAYER);

if (!_lastMeeting && playerMeeting) {
	audio_play_sound(snd_speaker, 10, false);
}