/// @description ds_list_add_at(id, pos, val [, val2, ... val15]);
/// @function ds_list_add_at
/// @param id
/// @param  pos
/// @param  val
/// @param  [val2, ... val15]

var _size = ds_list_size(argument[0]);
var _tempStackSize = _size - clamp(argument[1], 0, _size);
var _tempStack = ds_stack_create();

repeat (_tempStackSize) {
	ds_stack_push(
		_tempStack,
		ds_list_pop(argument[0], ds_list_size(argument[0]) - 1)
	);
}

for (var i = 2; i < argument_count; i++) {
	ds_list_add(argument[0], argument[i]);
}

repeat (_tempStackSize) {
	ds_list_add(argument[0], ds_stack_pop(_tempStack));
}

ds_stack_destroy(_tempStack);
