/// @desc Render world grid behind all else

// Fill background color
draw_clear($251c1c);

var _len = width * height;
for (var i = 0; i < _len; i++) {
	var _x = i  %  width;
	var _y = i div width;
	
	if (grid[# _x, _y] == WorldCell.stone) {
		draw_sprite(spr_wall, 0, _x * cellSize, _y * cellSize)	
	}
}