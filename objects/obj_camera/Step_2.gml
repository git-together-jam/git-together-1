///@description Update view position

var _half_cam_width  = width  / 2;
var _half_cam_height = height / 2;

switch (followMode) {
	
	case "screen_clamp": #region;
	
		// Keep camera on player
		if (instance_exists(PLAYER)) {	
			x = clamp(
				x,
				PLAYER.x - marginHorz, //Right border
				PLAYER.x + marginHorz //Left border
			);
			
			y = clamp(
				y,
				PLAYER.y - marginVert, //Bottom border
				PLAYER.y + marginVert //Top border
			);
		}
		
	break; #endregion;
		
	case "smooth": #region;
	
		if (instance_exists(PLAYER)) {	
			x = lerp(x, PLAYER.x, .1);
			y = lerp(y, PLAYER.y, .1);
		}
	
	break; #endregion;
}

if (roomClamp) {
	// Lock camera to room
	x = clamp(x, _half_cam_width,  room_width  - _half_cam_width );
	y = clamp(y, _half_cam_height, room_height - _half_cam_height);
}

// Reposition camera
camera_set_view_pos(VIEW, x - _half_cam_width, y - _half_cam_height);