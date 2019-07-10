// Draw player trails
if (global.GameState == GameState.edit)
{
	for(var i = 0; i < ds_list_size(trail); ++i)
	{
		var _currentTrail = trail[| i];
		draw_sprite_ext(
			_currentTrail[? "sprite_index"],
			_currentTrail[? "image_index"], 
			_currentTrail[? "x"],  _currentTrail[? "y"],
			_currentTrail[? "image_xscale"],
			image_yscale, image_angle, image_blend, i / 20
		);
	}
}

// Draw self with current xscale
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, 0, c_white, 1);
