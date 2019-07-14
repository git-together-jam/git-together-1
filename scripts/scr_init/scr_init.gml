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
ds_list_add(global.credits, ["Leo Jansson", "Code"]);
ds_list_add(global.credits, ["Casey MacNeil", "Visuals"]);
ds_list_add(global.credits, ["Bauke Regnerus", "Bouncy Block\nProgrammer"]);
ds_list_add(global.credits, ["Jacob S.", "Art, NPCs"]);
ds_list_add(global.credits, ["Nicholas Smith", "Code, Visuals,\nSound, Tutorial"]);
ds_list_add(global.credits, ["Yosi", "Code,\nShaders"]);
ds_list_add(global.credits, ["Ahmed Yasir", "Level Design"]);
ds_list_add(global.credits, ["SurgDev", "Slime & Ice"]);
ds_list_add(global.credits, ["Mason Young", "Music"]);
ds_list_add(global.credits, ["Katsaii", "Concept"]);
ds_list_add(global.credits, ["Sohom Sahaun", "Organization"]);
ds_list_add(global.credits, ["TonyStr", "Dream Mode"]);
ds_list_add(global.credits, ["nut4985", "Switch Art"]);
ds_list_add(global.credits, ["King Cubing", "Moral Support"]);

// Sound gain
global.MusicGain = 1;
global.FxGain = 0.4;