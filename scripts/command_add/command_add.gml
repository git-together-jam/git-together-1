/// @description command_add(command [, arg1, ... arg15]);
/// @function command_add
/// @param command
/// @param  [arg1, ... arg15]

var _cmdArray = array_create(argument_count);
for (var i = 0; i < argument_count; i++) _cmdArray[i] = argument[i];
ds_stack_push(commandStack, _cmdArray);