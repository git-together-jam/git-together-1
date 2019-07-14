/// @description Set pos

if (!is_undefined(audGroup)) switch (audGroup) {
	case audiogroup_fx:
		number = global.FxGain*100;
	case audiogroup_default:
		number = global.MusicGain*100;
}

x += number;