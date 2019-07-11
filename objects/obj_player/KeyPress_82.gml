/// @desc Reset to the last checkpoint

if (checkpoint == noone) {
	x = startX;
	y = startY;
} else {
	x = checkpoint.x;
	y = checkpoint.y - 1;
}