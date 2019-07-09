if(obj_world.editorActive)
{
	for(var i = 0; i < ds_list_size(trail); ++i)
	{
		var _currentTrail = trail[| i];
		draw_sprite_ext(sprite_index, _currentTrail[? "image_index"],  _currentTrail[? "x"],  _currentTrail[? "y"], _currentTrail[? "image_xscale"], image_yscale, image_angle, image_blend, i / 20 );
	}
}
draw_self();
