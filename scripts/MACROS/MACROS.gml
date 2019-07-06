// Game Dimensions
#macro GAME_WIDTH  obj_camera.width
#macro GAME_HEIGHT obj_camera.height

// Camera stuff
#macro VIEW_INDEX 0
#macro VIEW view_camera[VIEW_INDEX]

// Player object
#macro PLAYER obj_player

// World grid
enum WorldCell {
	void,	// Empty cell
	stone,	// The thing in the ground
	SIZE	// Length of enum, not an actual value
}