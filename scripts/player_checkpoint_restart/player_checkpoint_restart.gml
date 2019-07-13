/// @desc Restart at the latest activated checkpoint.

if (checkpoint != noone) {
	var _resetter = instance_create_layer(0, 0, "Instances", obj_resetter);
	_resetter.checkpoint = checkpoint;
}

global.GameState = GameState.play;
with (obj_camera) {
	followMode = CamFollowMode.smooth;
	followTarget = true;
}

room_restart();