/// @description angle_in_range(value, a1, a2);
/// @function angle_in_range
/// @param value
/// @param a1
/// @param a2

var _range = abs(angle_difference(argument1, argument2)) / 2;
var _mid = min(argument1, argument2) + _range;
return abs(angle_difference(argument0,_mid)) <= _range;