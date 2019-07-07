/// @description array_slice(array, left, right);
/// @function array_slice
/// @param array
/// @param  left
/// @param  right

var l = max(0, argument1);
var r = min(array_length_1d(argument0) - 1, argument2);

if (l > r) return [];

var a = array_create(r - l + 1);
for (var i = l; i <= r; i++) a[i - l] = argument0[i];
return a;