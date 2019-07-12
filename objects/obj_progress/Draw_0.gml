if (check_input(Input.pause_game)) {
	room_goto(rm_main_menu);
	exit;
}

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(x, y, string(percentage) + "% completion");