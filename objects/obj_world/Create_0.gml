/// @desc Initialize world grid

grid = ds_grid_create(width, height);
ds_grid_clear(grid, WorldCell.void);

#region Fill borders (placeholder)

var _r = width - 1;
var _t = 0;
var _l = 0;
var _b = height - 1;

// Left border
ds_grid_set_region(grid, _l, _t, _l, _b, WorldCell.stone);
// Right border
ds_grid_set_region(grid, _r, _t, _r, _b, WorldCell.stone);
// Bottom border
ds_grid_set_region(grid, _l, _b, _r, _b, WorldCell.stone);
	
#endregion;