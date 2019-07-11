var offset_x = ui_padding;
var offset_y = ui_padding;

// Draw remaining dreams.
for (var i = 0; i < dreams; i++) {
	draw_sprite(
		spr_dream_cloud, 0, 
		display_get_gui_width() - offset_x - i*sprite_get_width(spr_dream_cloud)*0.8,
		offset_y 
	);
}

// Don't draw anything else when not in edit mode.
if (global.GameState != GameState.edit) exit;

// Draw all tiles.
for (var tile_ind = 0; tile_ind < NUM_OF_TILES; tile_ind ++) {
	var num = available_tiles[| tile_ind];
	
	// Don't draw the tile if none are available.
	if (num == 0) continue;
	
	// Draw rectangle around it to indicate it's selected.
	if (tile_ind == global.SelectedTile) {
		draw_rectangle(
			offset_x - 2, offset_y - 2,
			offset_x + 16, offset_y + 16,
			true
		);
	}
	
	// Draw the sprite and number of available tiles.
	draw_tile(layer_tilemap_get_tileset("Tiles"), tile_ind, 0, offset_x, offset_y);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	draw_set_font(fnt_button);
	draw_set_color(c_white);
	draw_text(offset_x + 20, offset_y + 8, string(num));
	
	offset_y += 20;
}

// Draw mouse instructions graphic.
var graphic_x = obj_camera.width - sprite_get_width(spr_gui_mouse_tool) - ui_padding;
var graphic_y = obj_camera.height - sprite_get_height(spr_gui_mouse_tool) - ui_padding;

if (!is_undefined(global.SelectedTile)) {
	draw_tile(layer_tilemap_get_tileset("Tiles"), global.SelectedTile, 0, graphic_x + 1, graphic_y + 1);
} else {
	draw_sprite(spr_gui_no_tool, 0, graphic_x + 1, graphic_y + 1);
}
	
draw_sprite(spr_gui_mouse_tool, 0, graphic_x, graphic_y);