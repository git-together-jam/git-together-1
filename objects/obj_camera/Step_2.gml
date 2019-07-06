/// @desc Update the view
camera_set_view_size(cam, view_width, view_height);

if (instance_exists(Leo_objPlayer)) {
	var _x = camera_get_view_x(cam);
	var _y = camera_get_view_y(cam);
	
	var _xx = clamp(Leo_objPlayer.x-view_width/2, 0, room_width-view_width);
	var _yy = clamp(Leo_objPlayer.y-view_height/2, 0, room_width-view_height);
	
	var _spd = 0.2;
	camera_set_view_pos(cam, lerp(_x, _xx, _spd), lerp(_y, _yy, _spd));
}