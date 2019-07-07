/// @description command_execute(command);
/// @function command_execute
/// @param  command

script_execute(
	argument0[0],
	array_slice(argument0, 1, array_length_1d(argument0) - 1)
);