/// @desc Reset to the last checkpoint

if (checkpoint != noone) {
	var _resetter = instance_create_layer(0, 0, "Instances", obj_resetter);
	_resetter.checkpoint = checkpoint;
}
room_restart();