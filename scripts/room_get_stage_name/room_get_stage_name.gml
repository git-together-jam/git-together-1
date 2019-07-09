/// @description room_get_stage_name(index);
/// @function room_get_stage_name
/// @param index

var _s = room_get_name(argument0);
_s = string_delete(_s, 1, 3);
_s = string_replace(_s, "_", " ");
_s = string_set_byte_at(_s, 1, string_byte_at(_s, 0) - 32);

return _s;