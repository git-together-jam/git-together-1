/// Initialize global variables
gml_pragma("global", "scr_init()");

progress_load();

global.GameState = GameState.in_menu;

global.TileTypesArray = array_create(NUM_OF_TILES, TileType.wall);
array_set_multiple(global.TileTypesArray, [4, 5, 6], TileType.ice);
array_set_multiple(global.TileTypesArray, [10, 11, 12], TileType.slime);
array_set(global.TileTypesArray, 33, TileType.gravity_change);

global.edBottomAlpha = 1;
global.edTopAlpha = 0;

// Credits.
global.credits = ds_list_create();
ds_list_add(global.credits, ["Leo Jansson", "..."]);
ds_list_add(global.credits, ["Casey MacNeil", "..."]);
ds_list_add(global.credits, ["Bauke Regnerus", "Bouncing block\nprogrammer"]);
ds_list_add(global.credits, ["Jacob S.", "..."]);
ds_list_add(global.credits, ["Nicholas Smith", "..."]);
ds_list_add(global.credits, ["Yosi", "..."]);
ds_list_add(global.credits, ["Ahmed Yasir", "Level Designer"]);
ds_list_add(global.credits, ["SurgDev", "..."]);