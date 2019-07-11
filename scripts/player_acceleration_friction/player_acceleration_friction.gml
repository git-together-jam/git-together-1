/// @func player_acceleration_friction(moveDir, moveSpeed, acc, fric)
/// @desc applies acceleration or friction based on the move direction
/// @arg moveDir
/// @arg moveSpeed
/// @arg acc
/// @arg fric

var _moveDir = argument0;
var _moveSpeed = argument1;
var _acc = argument2;
var _fric = argument3;

if (moveDir != 0) {
	// Acceleration
	var _hspd = _moveDir * _moveSpeed;
	hspd = approach(hspd, _hspd, _acc);
} else {
	// Friction
	hspd = lerp(hspd, 0, _fric);
}