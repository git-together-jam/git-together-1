var _x = argument0;
var _y = argument1;

// No tile is selected, so stop!
if (is_undefined(global.SelectedTile)) return false;

// Cursor is outside editable area, so stop!
var _canEdit = disable_editable_areas || tile_at_cell("Editable_Area", _x, _y);
if (!_canEdit) return false;

// Check for collision with any game objects.
with (obj_game_object) {
	var in_cell = rectangle_in_rectangle(
		bbox_left, bbox_top, bbox_right, bbox_bottom,
		_x*CELL_WIDTH, _y*CELL_HEIGHT, (_x + 1)*CELL_WIDTH, (_y + 1)*CELL_HEIGHT
	);
	if (in_cell) return false;
}

// Get tile map data.
var _lay_id = layer_get_id("Tiles");
var _map_id = layer_tilemap_get_id(_lay_id);
var _data = tilemap_get(_map_id, _x, _y);
var _ind = tile_get_index(_data);

// Tile isn't void or already the selected tile, so stop!
if (_ind || _ind == global.SelectedTile) return false;

tilemap_set(
	_map_id,
	tile_set_index(_data, global.SelectedTile),
	_x, _y
);

if (available_tiles[global.SelectedTile] != -1)
	available_tiles[global.SelectedTile] --;

// If available number of selected time hits zero, select another one.
if (available_tiles[global.SelectedTile] == 0) {
	if (!editor_select_next() && !editor_select_previous()) {
		global.SelectedTile = undefined;
	}
}

return true;