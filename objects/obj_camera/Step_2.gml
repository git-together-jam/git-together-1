///@description Update view position

var _half_cam_width = camera_get_view_width(VIEW)/2;
var _half_cam_height = camera_get_view_height(VIEW)/2;

// Keep camera on player
if (instance_exists(PLAYER)) {	
	x = clamp(x,
		PLAYER.x - marginHorz, //Right border
		PLAYER.x + marginHorz //Left border
	);
	y = clamp(y,
		PLAYER.y - marginVert, //Bottom border
		PLAYER.y + marginVert //Top border
	);
}

// Lock camera to room
x = clamp(x, _half_cam_width, room_width - _half_cam_width);
y = clamp(y, _half_cam_height, room_height - _half_cam_height);

// Reposition camera
camera_set_view_pos(VIEW, x - _half_cam_width, y - _half_cam_height);
