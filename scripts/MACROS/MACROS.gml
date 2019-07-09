// Game Dimensions
#macro GAME_WIDTH  320
#macro GAME_HEIGHT 180

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
	normal,
	editing
}

//enum World

#macro CELL_WIDTH 16
#macro CELL_HEIGHT 16

//Tiles

enum Tile {
	any,
	wall,
	slime,
	ice
}