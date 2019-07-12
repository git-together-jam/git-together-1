// Don't draw anything when not in edit mode.
if (global.GameState != GameState.edit) return;

// Draw the cursor.
var is_active = check_input(Input.primary_action) || check_input(Input.secondary_action);

if (!gp_enabled) {
	draw_rect_outline(
		cursor_x * CELL_WIDTH + is_active, 
		cursor_y * CELL_HEIGHT + is_active, 
		cursor_x * CELL_WIDTH + CELL_WIDTH - is_active, 
		cursor_y * CELL_HEIGHT + CELL_HEIGHT - is_active
	);
} else {
	draw_rect_outline(
		cursor_grid_x * CELL_WIDTH + is_active, 
		cursor_grid_y * CELL_HEIGHT + is_active, 
		cursor_grid_x * CELL_WIDTH + CELL_WIDTH - is_active, 
		cursor_grid_y * CELL_HEIGHT + CELL_HEIGHT - is_active
	);
}