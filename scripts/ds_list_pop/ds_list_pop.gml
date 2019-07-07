/// @description ds_list_pop(id, pos);
/// @function ds_list_pop
/// @param id
/// @param  pos

var val = ds_list_find_value(argument0, argument1);
ds_list_delete(argument0, argument1);
return val;