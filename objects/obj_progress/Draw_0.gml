if (check_input(Input.pause_game)) {
	room_goto(rm_main_menu);
	exit;
}

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text_outline(x+50, y-2, txt, 1, c_black, 4);

draw_rect(x, y, x+100, y+10, PROGRESS_BAR_BG);

if (bar_width < percentage) {
	bar_width += 2;
}
draw_rect(x, y, x+bar_width, y+10, PROGRESS_BAR);

draw_self();