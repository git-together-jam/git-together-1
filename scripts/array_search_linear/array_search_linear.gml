/// @description array_search_linear(array, key)
/// @function array_search_linear
/// @param array
/// @param  key

var len = array_length_1d(argument0);

for (var i = 0; i < len; i++) {
	if (argument1 == argument0[i]) return i;
}

return -1;