/// @description Configure display

marginHorz = 45;
marginVert = 30;

targetX = x;
targetY = y;

width = GAME_WIDTH;
height = GAME_HEIGHT;
followMode = CamFollowMode.smooth;

// subpixel/zoom
var _spz = subpixelsEnabled ? zoom : 1;

window_set_size(width * zoom, height * zoom);
surface_resize(application_surface, width * _spz, height * _spz);
display_set_gui_size(width, height);

window_set_position(
	(display_get_width()  - width  * zoom) / 2,
	(display_get_height() - height * zoom) / 2,
);

window_set_cursor(cr_none);
cursor_sprite = spr_mouse;