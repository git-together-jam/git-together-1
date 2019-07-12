/// @desc Select the next available tile. Returns true if selected tile has changed.

// If none is set, just pick the default.
if (is_undefined(global.SelectedTile)) {
	return editor_select_default();
}

// Select the next available tile.
for (var tile_ind = global.SelectedTile + 1; tile_ind < NUM_OF_TILES; tile_ind ++) {
	if (available_tiles[tile_ind] != 0) {
		global.SelectedTile = tile_ind;
		return true;
	}
}

return false;