
if (editorActive) {
	var _click = mouse_check_button(mb_left) || mouse_check_button(mb_right);
	draw_rect_outline(
		hover_x * cellSize + _click, 
		hover_y * cellSize + _click, 
		hover_x * cellSize + cellSize - _click, 
		hover_y * cellSize + cellSize - _click
	);
}