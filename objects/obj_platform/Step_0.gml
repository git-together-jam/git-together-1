/// @description Movement logic

if (global.GameState != GameState.play) exit;

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
		with (PLAYER) if (place_meeting(x, (gravDir == 1) ? bbox_bottom + 1 : bbox_top - 1, other.id)) {
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
		with (PLAYER) if (place_meeting(x, (gravDir == 1) ? bbox_bottom + 1 : bbox_top - 1, other.id)) {
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