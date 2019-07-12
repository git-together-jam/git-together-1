/// @description
if (point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom)) {
	image_xscale = lerp(image_xscale, 1.1, .1);
} else {
	image_xscale = lerp(image_xscale, 1, .2);
}
image_yscale = image_xscale;