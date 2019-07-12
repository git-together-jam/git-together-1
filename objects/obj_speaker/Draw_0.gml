/// @description Draw text if player is near

draw_self();


if (!playerMeeting) exit;

var _margin = 4;
var _triHeight = 5;
var _triWidth = 6;

draw_set_valign(fa_left);
draw_set_halign(fa_top);
draw_set_font(fnt_mini);
var _txw = string_width(text);
var _txh = string_height(text);

var x1, y1, x2, y2;
x1 = x - _txw/2 - _margin;
x2 = x + _txw/2 + _margin;
y2 = y - sprite_yoffset - _triHeight - _margin;
y1 = y2 - _txh - _margin;

// Draw textbox
draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, false);
draw_triangle(
	x, y - sprite_yoffset - _margin,
	x + _triWidth/2, y2,
	x - _triWidth/2, y2,
	false
);

// Draw text
draw_set_color(c_black);
draw_text(x1 + _margin, y1 + _margin/2, text);
