draw_self();

if (mouse_over) {
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	draw_set_font(fnt_button);
	draw_set_color(c_white);
	draw_text(x + 10, y, stage[?"name"])
}