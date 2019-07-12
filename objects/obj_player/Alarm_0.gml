/// @description Checkpoint respawn 

// This is an alarm, because in some scenarios
// you want to explicitly delay the respawning (dying for example).
 
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