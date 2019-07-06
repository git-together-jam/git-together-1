/// @desc Toggles level editor mode for obj_world
/// @arg enable {boolean}

obj_world.editorActive = argument0;

with (obj_camera) {
	if (argument0) {
		// Enable editor
		followMode = CamFollowMode.smooth;
		followTarget = false;
		targetX = width  / 2;
		targetY = height / 2;
	} else {
		// Disable editor (enter play state)
		followTarget = true;
	}
}