///@description Update view position

var _halfCamWidth  = width  / 2;
var _halfCamHeight = height / 2;

if (followTarget && instance_exists(target)) {
	targetX = target.x;
	targetY = target.y;
}

switch (followMode) {
	
	case CamFollowMode.screenClamp:
		#region
	
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
		#endregion
	break;
		
	case CamFollowMode.smooth:
		#region
		if (instance_exists(PLAYER)) {	
			x = lerp(x, targetX, .1);
			y = lerp(y, targetY, .1);
		}
		#endregion
	break;
	
	case CamFollowMode.keyboard:
		#region
		var _spd = 2;
		x +=  (
			(keyboard_check(vk_right) || keyboard_check(ord("D"))) -
			(keyboard_check(vk_left ) || keyboard_check(ord("A")))
		) * _spd;
		   
		y += (
			(keyboard_check(vk_down ) || keyboard_check(ord("S"))) -
			(keyboard_check(vk_up   ) || keyboard_check(ord("W")))
		) * _spd;
		#endregion
	break;
}

if (roomClamp) {
	// Lock camera to room
	x = clamp(x, _halfCamWidth,  room_width  - _halfCamWidth );
	y = clamp(y, _halfCamHeight, room_height - _halfCamHeight);
}

// Reposition camera
camera_set_view_pos(VIEW, x - _halfCamWidth, y - _halfCamHeight);