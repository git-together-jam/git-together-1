if (global.GameState != GameState.play || has_hit_player) exit;

var to_x, to_y;

if (to_finish) {
	to_x = finish_x;
	to_y = finish_y;
} else {
	to_x = start_x;
	to_y = start_y;
}

var dir = point_direction(x, y, to_x, to_y);
var move_x = lengthdir_x(move_speed, dir);
var move_y = lengthdir_y(move_speed, dir);

// Reverse direction if enemy will run into tile.
if (solid_meeting(x + move_x, y + move_y)) {
	to_finish = (!to_finish);
	exit;
}

x += move_x;
y += move_y;

// Reverse direction if destination is reached.
if (
	point_distance(x, y, to_x, to_y) < move_speed ||
	solid_meeting(x, y)
) {
	to_finish = (!to_finish);
}