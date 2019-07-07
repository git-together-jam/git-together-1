/// @desc Render world grid behind all else

// Fill background color
draw_clear($251c1c);

var _len = grid_width * grid_height;
for (var i = 0; i < _len; i++) {
	var _x = i  %  grid_width;
	var _y = i div grid_width;
	
	switch (grid[# _x, _y]) {
		case WorldCell.stone:
			draw_sprite(spr_wall, 0, _x * CELL_WIDTH, _y * CELL_HEIGHT);
			break;
		case WorldCell.start:
			draw_sprite(spr_start, 0, _x * CELL_WIDTH, _y * CELL_HEIGHT);
			break;
	}
}