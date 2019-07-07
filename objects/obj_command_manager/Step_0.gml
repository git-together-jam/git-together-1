/// @description Execute commands

if (executing && !wait) {
	var _currentCommand = ds_list_pop(commandList, ds_list_size(commandList) - 1);
	
	// Execute command if it exists
	if (!is_undefined(_currentCommand)) {
		command_execute(_currentCommand);
		
	// Otherwise, reset
	} else {
		ds_list_copy(commandList, commandListBack);
		wait = false;
		executing = true;
	}
}