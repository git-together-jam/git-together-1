/// @desc Check for player collision

if (global.GameState != GameState.play) exit;

mask_index = spr_peeper_topmask;

var _bounced = false;

with(PLAYER) {
	if (other.state != "bounce" && position_meeting(x, bbox_bottom + 1, other)) {
		vspd = other.bouncePower;
		jumpSpeedMin = other.bouncePowerMin;
		_bounced = true;
		other.state = "bounce";
		playedSound = false;
	} else {
		other.mask_index = spr_peeper;
		
		if (place_meeting(x, y, other)) {
			vspd = other.bouncePower;
			vpsdMin = other.bouncePower;
			_bounced = true;
		}
	}
}

if (_bounced) {
	with (PLAYER) player_set_state(PlayerState.in_air, true);
	if (!playedSound) {
		audio_play_sound(snd_spring, 10, false);
		playedSound = true;
	}
}

mask_index = spr_peeper;