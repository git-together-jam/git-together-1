/// @description Movement logic

// Exit if not moving.
if (!moving) exit;

// Move normally.
if (moveToggle) {
	var _endX = startX + lengthdir_x(moveRange, moveDir);
	var _endY = startY + lengthdir_y(moveRange, moveDir);
	
	// If we're not within 1px of the end point, move.
	if (point_distance(x, y, _endX, _endY) > 1) {
		var _toMoveX = lengthdir_x(moveSpeed, moveDir);
		var _toMoveY = lengthdir_y(moveSpeed, moveDir);
		if (place_meeting(x, y - 1, PLAYER)) with (PLAYER) {
			x += _toMoveX;
			y += _toMoveY;
		}
		x += _toMoveX;
		y += _toMoveY;
	
	// Otherwise, toggle move dir.
	} else {
		moveToggle = !moveToggle;
		moving = false;
		alarm[0] = moveDelay;
	}

// Move in the opposite direction.
} else {
	// If we're not within 1px of the end point, move.
	if (point_distance(x, y, startX, startY) > 1) {
		var _toMoveX = -lengthdir_x(moveSpeed, moveDir);
		var _toMoveY = -lengthdir_y(moveSpeed, moveDir);
		if (place_meeting(x, y - 1, PLAYER))with (PLAYER) {
			x += _toMoveX;
			y += _toMoveY;
		}
		x += _toMoveX;
		y += _toMoveY;
	
	// Otherwise, toggle move dir.
	} else {
		moveToggle = !moveToggle;
		moving = false;
		alarm[0] = moveDelay;
	}
}