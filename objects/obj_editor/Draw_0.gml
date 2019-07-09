// Don't draw anything when not in edit mode.
if (global.GameState != GameState.edit) return;

// Draw the cursor.
var mouse_down = mouse_check_button(mb_left) || mouse_check_button(mb_right);
draw_rect_outline(
	cursor_x * CELL_WIDTH + mouse_down, 
	cursor_y * CELL_HEIGHT + mouse_down, 
	cursor_x * CELL_WIDTH + CELL_WIDTH - mouse_down, 
	cursor_y * CELL_HEIGHT + CELL_HEIGHT - mouse_down
);