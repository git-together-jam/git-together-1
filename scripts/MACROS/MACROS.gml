// Game Dimensions
#macro GAME_WIDTH  320
#macro GAME_HEIGHT 180

#macro PROGRESS_FILE_NAME "lskajdafldnslfvd.dat"
#macro NUM_OF_STAGES 8

// Game state
enum GameState {
	in_menu,
	play,
	edit,
	paused
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
#macro PLAYER_DIE_TIME 80

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
	jump_hold,
	primary_action,
	secondary_action,
	select_previous,
	select_next,
	pause_game
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

// Shader
#macro TECHNO_R 0.16862745098
#macro TECHNO_G 0.35686274509
#macro TECHNO_B 0.5294117647
#macro TECHNO_TIME 1500
#macro FLASH_TIME 600