/// @desc Initialize world grid

var _stage = global.SelectedStage;
grid = script_execute(_stage[?"create_script"]);

grid_width = ds_grid_width(grid);
grid_height = ds_grid_height(grid);

grid_start_x = ds_grid_value_x(grid, 0, 0, grid_width-1, grid_height-1, WorldCell.start);
grid_start_y = ds_grid_value_y(grid, 0, 0, grid_width-1, grid_height-1, WorldCell.start);

// Create the player.
instance_create_layer(
	grid_start_x * CELL_WIDTH,
	grid_start_y * CELL_HEIGHT,
	"Instances",
	obj_player
);

world_toggle_editor(editorActive);

#region Internal Editor Variables

// Hover is cursor. Allows subpixels. Eases toward cursor every step
hover_x = 0;
hover_y = 0;

lTool = WorldCell.stone; // left  mouse button tool
rTool = WorldCell.void;  // right mouse button tool

#region GUI Constants

toolGUISize = 16;

lToolGUIOffX = 1;
lToolGUIOffY = 1;

rToolGUIOffX = 39;
rToolGUIOffY = 1;

#endregion;

#endregion;
