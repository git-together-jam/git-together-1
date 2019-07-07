var width = 30;
var height = 16;

var grid = ds_grid_create(width, height);
ds_grid_clear(grid, WorldCell.void);

// Borders
ds_grid_set_region(grid, 0, 0, 0, height-1, WorldCell.stone); //left
ds_grid_set_region(grid, width-1, 0, width-1, height-1, WorldCell.stone); //right
ds_grid_set_region(grid, 0, height-1, width-1, height-1, WorldCell.stone); //bottom

// Start and finish
ds_grid_set(grid, 20, height-2, WorldCell.start);
// TODO add finish

return grid;