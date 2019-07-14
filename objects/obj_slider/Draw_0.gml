//Slider
draw_sprite(sliderBar, 0, xOriginal, y);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_set_font(fnt_button);
draw_set_color(c_white);
draw_text_outline(
	xOriginal,
	y - 9, text + string(round(100*(number/numberMax))) + "%",
	1, c_black, 4
);
draw_self();