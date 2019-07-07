/// @description ds_stack_push_at(id, pos, val [, val2, ... val15]);
/// @function ds_stack_push_at
/// @param id
/// @param  pos
/// @param  val
/// @param  [val2, ... val15]

var _tempStack = ds_stack_create();

repeat (ds_stack_size(argument[0]) - argument[1]) {
	ds_stack_push(_tempStack, ds_stack_pop(argument[0]));
}

for (var i = 2; i < argument_count; i++) {
	ds_stack_push(argument[0], argument[i]);
}

repeat (ds_stack_size(_tempStack)) {
	ds_stack_push(argument[0], ds_stack_pop(_tempStack));
}

ds_stack_destroy(_tempStack);
