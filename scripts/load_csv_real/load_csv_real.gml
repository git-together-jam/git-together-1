/// @description load_csv_real(filename);
/// @function load_csv_real
/// @param filename

var _grid = load_csv(argument0);

for (var _y = 0; _y < ds_grid_height(_grid); _y++) {
	for (var _x = 0; _x < ds_grid_width(_grid); _x++) {
		_grid[# _x, _y] = real(_grid[# _x, _y]);
	}
}

return _grid;