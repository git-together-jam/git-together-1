/// @description tile_at_cell(layer_name, cell_x, cell_y);
/// @function tile_at_cell
/// @param layer_name
/// @param  cell_x
/// @param  cell_y

return bool(tilemap_get(layer_tilemap_get_id(
	layer_get_id(argument0)), argument1, argument2));