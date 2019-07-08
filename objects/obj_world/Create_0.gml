/// @desc Initialize world global.StageGrid

grid_width = ds_grid_width(global.StageGrid);
grid_height = ds_grid_height(global.StageGrid);

grid_start_x = ds_grid_value_x(global.StageGrid, 0, 0, grid_width-1, grid_height-1, WorldCell.start);
grid_start_y = ds_grid_value_y(global.StageGrid, 0, 0, grid_width-1, grid_height-1, WorldCell.start);

// Create the player.
instance_create_layer(
	grid_start_x * CELL_WIDTH + CELL_WIDTH/2,
	grid_start_y * CELL_HEIGHT - 1,
	"Instances",
	obj_player
);

// Create edit selection.
instance_create_layer(0, 0, "Instances", obj_editor);

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
