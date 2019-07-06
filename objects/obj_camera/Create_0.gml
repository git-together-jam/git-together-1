/// @desc Init
view_width = 480;
view_height = 320;
window_scale = 2;

cam = camera_create();

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);