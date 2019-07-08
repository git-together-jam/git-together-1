var offset_x = 10;
var offset_y = 10;

var num_of_blocks = ds_list_size(available_blocks);
for (var i = 0; i < num_of_blocks; i ++) {
	var block = available_blocks[|i];
	var sprite = ds_list_find_value(global.WorldCellSprites, block[?"id"]);
	
	// Draw rectangle around it to indicate it's selected.
	if (block == global.SelectedBlock) {
		draw_rectangle(
			offset_x - 2, offset_y - 2,
			offset_x + 16, offset_y + 16,
			true
		);
	}
	
	draw_sprite(sprite, 0, offset_x, offset_y);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	draw_set_font(fnt_button);
	draw_set_color(c_white);
	draw_text(offset_x + 20, offset_y, string(block[?"num"]));
	
	offset_y += 20;
}