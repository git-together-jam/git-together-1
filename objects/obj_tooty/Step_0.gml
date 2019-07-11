/// @description Steppystepp
// You can write your code in this editor for only $99.99 a month!

var _fallSpeed = fallSpeed;

switch(state){
	case "snort": // Snort snort
		hspd = snortdir;
	break;
	default: // Snört?
		state = "snort";
	break;
}

switch(tile_at_position(bbox_left-1, y, "Tiles")) { // Left check
	case TileType.slime:
		_fallSpeed *= 0.1;
	break;
	case -1:
	// Nothing!!
	break;
	default:
		snortdir = 1;
	break;
}
switch(tile_at_position(bbox_right+1, y, "Tiles")) { // Right check
	case TileType.slime:
		_fallSpeed *= 0.1;
	break;
	case -1:
	// It's air
	break;
	default:
		snortdir = -1;
	break;
}

switch(tile_at_position(bbox_left-1, bbox_bottom+1, "Tiles")) { // Downleft check
	case -1:
		snortdir = 1;
	break;
}
switch(tile_at_position(bbox_right+1, bbox_bottom+1, "Tiles")) { // Downright check
	case -1:
		snortdir = -1;
	break;
}

#region // The not-interesting stuff

// Apply gravity
var _vspd = min(vspd + grav, vspdMax);
if (_vspd < 0){
	vspd = _vspd;
}else{
	vspd = _vspd * _fallSpeed; // Only apply fall multiplier if falling -/J
}

if (solid_meeting(x + hspd, y)) {
	x = (hspd > 0) ? floor(x) : ceil(x);
	var _sign = sign(hspd);
	while (!solid_meeting(x + _sign, y)) x += _sign;
	hspd = 0;
}
x += hspd;

if (solid_meeting(x, y + vspd)) {
	y = (vspd > 0) ? floor(y) : ceil(y);
	var _sign = sign(vspd);
	while (!solid_meeting(x, y + _sign)) y += _sign;
	vspd = 0;
}
y += vspd;

#endregion