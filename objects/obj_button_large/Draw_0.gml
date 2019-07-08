draw_self();

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_button);
draw_text(
	x + (sprite_width div 2) + 1,
	y + (sprite_height div 2) - 1,
	text
);