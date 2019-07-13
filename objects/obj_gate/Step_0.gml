/// @description Remove/add segments

if (!instance_exists(mySwitch)) exit;

var _delay = 4;
if (mySwitch.on) {
	if (currentIndex < length) {
		if (!alarm[1]) alarm[1] = _delay;
	}
} else {
	if (currentIndex > 0) {
		if (!alarm[0]) alarm[0] = _delay;
	}
}