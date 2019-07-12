/// @description angle_in_range(value, a1, a2);
/// @function angle_in_range
/// @param value
/// @param a1
/// @param a2

var _range = angle_difference(argument1, argument2) / 2; show_debug_message("R: " + string(_range));
var _mid = min(argument1, argument2) + _range; show_debug_message("M: " + string(_mid));
return abs(angle_difference(argument0,_mid)) <= _range;