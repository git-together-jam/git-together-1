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
	idle,
	user_controlled,
	game_controlled
}

// World grid
// Don't change the order of the enum values!!! It will break the stages.
enum WorldCell {
	void,
	start,
	finish,
	stone,
	SIZE	// Length of enum, not an actual value
}

#macro CELL_WIDTH 16
#macro CELL_HEIGHT 16