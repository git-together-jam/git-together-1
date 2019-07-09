
if (editorActive) {
	
	var _camW = obj_camera.width;
	var _camH = obj_camera.height;
	
	var _sprW = sprite_get_width( spr_gui_mouse_tool);
	var _sprH = sprite_get_height(spr_gui_mouse_tool);
	
	var _pad = 3;
	
	var _gsx = _camW - _sprW - _pad;
	var _gsy = _camH - _sprH - _pad;
	
	draw_sprite(
		spr_gui_no_tool,
		0,
		_gsx + lToolGUIOffX,
		_gsy + lToolGUIOffY
	);
	
	draw_sprite(
		rTool == WorldCell.stone ? spr_wall : spr_gui_no_tool,
		0,
		_gsx + rToolGUIOffX,
		_gsy + rToolGUIOffY
	);
	
	draw_sprite(spr_gui_mouse_tool, 0, _gsx, _gsy);
}