if (global.GameState == GameState.paused) exit;

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

// Draw all tiles.
for (var tile_ind = 0; tile_ind < NUM_OF_TILES; tile_ind ++) {
	var num = available_tiles[tile_ind];
	
	// Don't draw the tile if none are available.
	if (num == 0) continue;
	
	var display_as_selected = (tile_ind == global.SelectedTile && global.GameState == GameState.edit)
	var subimg = (display_as_selected) ? 1 : 0;
	var indent = (display_as_selected) ? 2 : 0;
	
	draw_sprite(spr_tile_editor, subimg, offset_x + indent, offset_y);
	draw_tile(layer_tilemap_get_tileset("Tiles"), tile_ind, 0, offset_x + 3 + indent, offset_y + 3);
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_font(fnt_button);
	if (num < 0) draw_sprite(spr_inf, 0, offset_x + 23 + indent, offset_y + 12);
	else draw_text(offset_x + 23 + indent, offset_y + 6, string(num));
	
	offset_y += 24;
}

// Don't draw anything else when not in edit mode.
if (global.GameState != GameState.edit) exit;

// Draw mouse instructions graphic.
var graphic_x = obj_camera.width - sprite_get_width(spr_gui_mouse_tool) - ui_padding;
var graphic_y = obj_camera.height - sprite_get_height(spr_gui_mouse_tool) - ui_padding;
	
draw_sprite(spr_gui_mouse_tool, 0, graphic_x - 1, graphic_y - 1);

if (!is_undefined(global.SelectedTile)) {
	draw_tile(layer_tilemap_get_tileset("Tiles"), global.SelectedTile, 0, graphic_x + 1, graphic_y + 1);
} else {
	draw_sprite(spr_gui_no_tool, 0, graphic_x + 1, graphic_y + 1);
}