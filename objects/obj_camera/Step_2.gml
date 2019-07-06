///@description Update view position

var _half_cam_width  = width  / 2;
var _half_cam_height = height / 2;

if (followTarget && instance_exists(target)) {
	targetX = target.x;
	targetY = target.y;
}

switch (followMode) {
	
	case CamFollowMode.screenClamp: #region;
	
		// Keep camera on player
		if (instance_exists(target)) {	
			x = clamp(
				x,
				targetX - marginHorz, //Right border
				targetX + marginHorz //Left border
			);
			
			y = clamp(
				y,
				targetY - marginVert, //Bottom border
				targetY + marginVert //Top border
			);
		}
		
	break; #endregion;
		
	case CamFollowMode.smooth: #region;
	
		if (instance_exists(PLAYER)) {	
			x = lerp(x, targetX, .1);
			y = lerp(y, targetY, .1);
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