event_inherited();

if (scope != noone && !is_undefined(user_event)) {
	var numb = user_event;
	with (scope) {
		event_user(numb);
	}
}