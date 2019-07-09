/// @desc Set the default selected tile. Returns true if selected tile has changed.

// If already set, no need to do anything.
if (!is_undefined(global.SelectedTile)) return false;

// Pick the first tile that has any available.
for (var tile_ind = 0; tile_ind < NUM_OF_TILES; tile_ind ++) {
	if (available_tiles[| tile_ind] > 0) {
		global.SelectedTile = tile_ind;
		return true;
	}
}

return false;