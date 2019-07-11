/// @func player_set_state(state, reset_subimage)
/// @desc Set the state of the player.
/// @arg state
/// @arg reset_subimage

var _newState = argument0;
var _reset = argument1;

if (_newState == state) return;

state = _newState;
if (_reset) image_index = 0;