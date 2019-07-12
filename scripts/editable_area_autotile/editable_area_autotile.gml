var _tw = room_width div CELL_WIDTH;
var _th = room_height div CELL_HEIGHT;

// Create new tile layer
var _lay_id = layer_get_id("Editable_Area");
var _layerId = layer_create(layer_get_depth(_lay_id));
var _newTiles = layer_tilemap_create(_layerId, 0, 0, tileset_edit_2, _tw, _th);

var _coordArr = [1, 0, -1, 0];
for (var yy = 0; yy < _th; yy++) {
	for (var xx = 0; xx < _tw; xx++) {
		// Get the tile for this cell
		var _map_id = layer_tilemap_get_id(_lay_id);
		var _data = tilemap_get(_map_id, xx, yy);
		
		// If there is a tile, set index of new
		// layer based on adjacent cells
		if (_data) {
			var _indexToSet = 0;
			for (var i = 0; i < 4; i++) {
				var _adjTile = tilemap_get(
					_map_id,
					xx + _coordArr[i],
					yy + _coordArr[(i + 1) mod 4]
				);
				if (_adjTile) _indexToSet |= power(2, i);
			}
			
			tilemap_set(
				_newTiles,
				tile_set_index(_data, _indexToSet + 1),
				xx, yy
			);
		}
	}
}

return _layerId;