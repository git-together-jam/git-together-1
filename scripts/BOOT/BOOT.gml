// Define the world cell sprites.
global.WorldCellSprites = ds_list_create();
ds_list_set(global.WorldCellSprites, WorldCell.start, spr_start);
ds_list_set(global.WorldCellSprites, WorldCell.stone, spr_wall);

// Load the stages configuration.
var stages_json = load_json("stages_config.json");
global.Stages = stages_json[? "stages"];