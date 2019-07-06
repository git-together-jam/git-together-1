/// @description Toggle fullscreen on/off

window_set_fullscreen(!window_get_fullscreen());

var button_text = window_get_fullscreen() ? "Fullscreen OFF" : "Fullscreen ON";
with (fullscreen_btn) {
	text = button_text;
}