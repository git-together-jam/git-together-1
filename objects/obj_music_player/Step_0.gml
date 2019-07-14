var menu_state = mixer_state == GameState.in_menu;
var in_game = global.GameState != GameState.in_menu;

mixer_state = global.GameState;
	
// Switch from menu to game state.
if (menu_state == in_game) {
	event_user(0);
	return;
}

// Update game tracks.
if (!menu_state) {
	event_user(1);
}