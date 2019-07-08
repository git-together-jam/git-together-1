/// @arg filename

var data = "";

var json = file_text_open_read(argument0);
while(!file_text_eof(json))
{
   data += file_text_read_string(json);
   file_text_readln(json);
}

file_text_close(json);

return json_decode(data);