if (debug_mode and mouse_over) {
	draw_set_color(c_white);
	for (var i=0; i<ds_list_size(connected_stages); i++) {
		draw_line_width(x, y, connected_stages[| i].x, connected_stages[| i].y, 2);
	}
}

draw_self();

if (mouse_over) {
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	draw_set_font(fnt_button);
	draw_set_color(c_white);
	draw_text_outline(x + 10, y, name, 1, c_black, 4);
}