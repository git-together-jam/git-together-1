var json_string = json_encode(global.progress);
var buffer = buffer_create(string_byte_length(json_string) + 1, buffer_fixed, 1);

buffer_write(buffer, buffer_string, json_string);
buffer_save(buffer, PROGRESS_FILE_NAME);
buffer_delete(buffer);