/// @description Check is player hits a deadly object.

// Player is already dead, so stop!
if (state == PlayerState.dead) return;

// If the check_player_bbox flag is set on the other, bbox collision will be used (default).
// Else, only check for meeting with the player object's origin.
if (other.check_player_bbox || position_meeting(x, y, other)) {
	other.has_hit_player = true;
	player_die();
}