/// @desc Select the previous available tile. Returns true if selected tile has changed.

// If none is set, just pick the default.
if (is_undefined(global.SelectedTile)) {
	return editor_select_default();
}

// Select the previous available tile.
for (var tile_ind = global.SelectedTile - 1; tile_ind >= 0; tile_ind --) {
	if (available_tiles[tile_ind] != 0) {
		global.SelectedTile = tile_ind;
		return true;
	}
}

return false;