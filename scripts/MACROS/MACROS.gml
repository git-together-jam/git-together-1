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
enum WorldCell {
	void,	// Empty cell
	stone,	// The thing in the ground
	SIZE	// Length of enum, not an actual value
}