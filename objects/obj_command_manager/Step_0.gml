/// @description Execute commands

if (executing && !wait) {
	var _currentCommand = ds_stack_pop(commandStack);
	
	// Execute command if it exists
	if (!is_undefined(_currentCommand)) {
		command_execute(_currentCommand);
		
	// Otherwise, reset
	} else {
		ds_stack_copy(commandStack, commandStackBack);
		wait = false;
		executing = true;
	}
}