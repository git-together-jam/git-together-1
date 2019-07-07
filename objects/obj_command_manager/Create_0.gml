/// @description Initialize command stack

commandStack = ds_stack_create();
commandStackBack = ds_stack_create();

wait = false;
executing = true;