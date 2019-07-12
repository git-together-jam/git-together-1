/// @description draw_text_outline(x, y, str, outwidth, outcol, outfidelity)
/// @param x
/// @param  y
/// @param  str
/// @param  outwidth
/// @param  outcol
/// @param  outfidelity

//Created by Andrew McCluskey http://nalgames.com/
//x,y: Coordinates to draw
//str: String to draw
//outwidth: Width of outline in pixels
//outcol: Colour of outline (main text draws with regular set colour)
//outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)

var dto_dcol = draw_get_color();

draw_set_color(argument4);

for (var dto_i = 0; dto_i < 360; dto_i += 360/argument5) {
    draw_text(
		argument0 + lengthdir_x(argument3, dto_i),
		argument1 + lengthdir_y(argument3, dto_i),
		argument2
	);
}

draw_set_color(dto_dcol);

draw_text(argument0, argument1, argument2);