/// @func player_check_deadly_objects()
/// @desc Check for collisions with deadly objects and set the player's state to dead
// If the check_player_bbox flag is set on the object colliding with, bbox collision will be used (default).
// Else, only check for meeting with the player object's origin.

var _deadlyObj = instance_place(x, y, obj_deadly);

if (_deadlyObj != noone && (_deadlyObj.check_player_bbox || position_meeting(x, y, _deadlyObj))) {
	_deadlyObj.has_hit_player = true;
	player_stop_movement();
	player_die();
	return true;
}

return false;