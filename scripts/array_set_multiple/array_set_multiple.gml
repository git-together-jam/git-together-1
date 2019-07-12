/// @func array_set_multiple(array, indexes, value)
/// @desc sets an array of indexes to a specified value of an array
/// @arg array
/// @arg indexes
/// @arg value

var _arr = argument0;
var _indexes = argument1;
var _value = argument2;

var _len = array_length_1d(_indexes);

for (var i = 0; i < _len; i++) {
	var _index = _indexes[i];
	_arr[@_index] = _value;
}