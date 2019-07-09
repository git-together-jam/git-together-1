/// @desc Initialize world

// Create edit selection.
instance_create_layer(0, 0, "Instances", obj_editor);

world_toggle_editor(editorActive);

#region Internal Editor Variables

// Hover is cursor. Allows subpixels. Eases toward cursor every step
hover_x = 0;
hover_y = 0;

lTool = 0; // left  mouse button tool
rTool = 0;  // right mouse button tool

#region GUI Constants

lToolGUIOffX = 1;
lToolGUIOffY = 1;

rToolGUIOffX = 39;
rToolGUIOffY = 1;

#endregion;

#endregion;
