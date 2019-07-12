/// Initialize global variables
gml_pragma("global", "scr_init()");

global.GameState = GameState.in_menu;

global.TileTypesArray = array_create(NUM_OF_TILES, TileType.wall);
array_set_multiple(global.TileTypesArray, [4, 5, 6], TileType.ice);
array_set_multiple(global.TileTypesArray, [10, 11, 12], TileType.slime);
array_set(global.TileTypesArray, 33, TileType.gravity_change);