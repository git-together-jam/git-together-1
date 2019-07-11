/// @description Get the player outta me!

var _thisBboxMiddle = (bbox_top + bbox_bottom)/2;
var _otherBboxMiddle = (other.bbox_top + other.bbox_bottom)/2;

if (_thisBboxMiddle > _otherBboxMiddle) {
	other.y =  bbox_top + other.bbox_bottom - other.y - 1;
} else {
	other.y =  bbox_bottom - other.bbox_top + other.y;
}