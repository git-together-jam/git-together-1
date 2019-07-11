// Game Dimensions
#macro GAME_WIDTH  320
#macro GAME_HEIGHT 180

// Game state
enum GameState {
	play,
	edit,
	in_menu
}

// Camera stuff
#macro VIEW_INDEX 0
#macro VIEW view_camera[VIEW_INDEX]

enum CamFollowMode {
	smooth,
	screenClamp,
	keyboard
}

// Player object
#macro PLAYER obj_player

// Player state
enum PlayerState {
	on_ground,
	in_air,
	hurt
}

// Controls
#macro LEFT_KEY ord("A")
#macro RIGHT_KEY ord("D")
#macro JUMP_KEY ord("W")
#macro EDIT_KEY mb_right

// World
#macro CELL_WIDTH 16
#macro CELL_HEIGHT 16

// There's not way to get the total number or tiles in the tile set, so here it is.
#macro NUM_OF_TILES 24

// Tiles
enum TileType {
	any,
	wall,
	ice,
	slime
}
