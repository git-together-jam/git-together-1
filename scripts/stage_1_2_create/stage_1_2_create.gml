var width = 20;
var height = 16;

var grid = ds_grid_create(width, height);
ds_grid_clear(grid, WorldCell.void);

// Borders
ds_grid_set_region(grid, 0, 0, 0, height-1, WorldCell.stone); //left
ds_grid_set_region(grid, 0, height-1, width-1, height-1, WorldCell.stone); //bottom

// Platforms
ds_grid_set_region(grid, 3, height-3, width-4, height-3, WorldCell.stone);
ds_grid_set(grid, 13, height-4, WorldCell.stone);
ds_grid_set_region(grid, 8, height-6, width-5, height-6, WorldCell.stone);

// Start and finish
ds_grid_set(grid, 12, height-7, WorldCell.start);
// TODO add finish

return grid;