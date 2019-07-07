/// @description Delete command stack

if (ds_exists(commandStack, ds_type_stack)) ds_stack_destroy(commandStack);
if (ds_exists(commandStackBack, ds_type_stack)) ds_stack_destroy(commandStackBack);