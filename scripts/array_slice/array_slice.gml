/// @description array_slice(array, left, right);
/// @function array_slice
/// @param array
/// @param  left
/// @param  right

if (argument1 > argument2) return [];

var a = array_create(argument2 - argument1 + 1);
for (var i = argument1; i <= argument2; i++) a[i - argument1] = argument0[i];
return a;