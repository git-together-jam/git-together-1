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

#macro VIEW_X camera_get_view_x(VIEW)
#macro VIEW_Y camera_get_view_y(VIEW)

#macro VIEW_WIDTH camera_get_view_width(VIEW)
#macro VIEW_HEIGHT camera_get_view_height(VIEW)

enum CamFollowMode {
	smooth,
	screenClamp,
	keyboard
}

// Player object
#macro PLAYER obj_player
#macro PLAYER_MIDDLE 6

// Player state
enum PlayerState {
	on_ground,
	in_air,
	hurt,
	dead
}

// Controls
enum Input {
	move_left,
	move_right,
	jump,
	primary_action,
	secondary_action,
	select_previous,
	select_next,
}

#macro ALLOW_GAMEPAD true

// World
#macro CELL_WIDTH 16
#macro CELL_HEIGHT 16

// There's not way to get the total number or tiles in the tile set, so here it is.
#macro NUM_OF_TILES 34

// Tiles
enum TileType {
	any,
	wall,
	ice,
	slime,
	deadly,
	gravity_change
}
