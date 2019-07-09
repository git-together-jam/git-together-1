/// @description tile_meeting(x, y, tilemap_element_id);
/// @function tile_meeting
/// @param x
/// @param  y
/// @param  tilemap_element_id
//Source: https://www.youtube.com/watch?v=Q_L7DGEv3_8&feature=youtu.be

var xx, yy, tilemap, xp, yp, meeting;

xx = argument0;
yy = argument1;
tilemap = argument2;

//save our current position
xp = x;
yp = y;

//move to the position where we wanna check for a tile collision
x = xx;
y = yy;

//check for collision on all four corners of the collision mask
meeting =		tilemap_get_at_pixel(tilemap, bbox_right, bbox_top)
				||
				tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom)
				||
				tilemap_get_at_pixel(tilemap, bbox_left, bbox_top)
				||
				tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);

//Move back to the original position
x = xp;
y = yp;

//Return wether or not there was a collision
return(meeting);