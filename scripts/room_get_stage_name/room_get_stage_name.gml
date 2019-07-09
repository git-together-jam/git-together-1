/// @description room_get_stage_name(index);
/// @function room_get_stage_name
/// @param index

// Get room name
var _s = room_get_name(argument0);

// Delete "rm_"
_s = string_delete(_s, 1, 3);

// Capitalize first letter
_s = string_set_byte_at(_s, 1, string_byte_at(_s, 0) - 32);

// Replace underscores with spaces and capitalize
for (var i = 0; i < string_length(_s); i++) {
	if (string_byte_at(_s, i) == ord("_")) {
		_s = string_set_byte_at(_s, i, ord(" "));
		_s = string_set_byte_at(_s, i + 1, string_byte_at(_s, i + 1) - 32);
	}
}

return _s;