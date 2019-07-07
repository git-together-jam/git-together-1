/// @description Delete command stack

if (ds_exists(commandList, ds_type_list)) ds_list_destroy(commandList);
if (ds_exists(commandListBack, ds_type_list)) ds_list_destroy(commandListBack);