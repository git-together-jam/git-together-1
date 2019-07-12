///@param angle
///@param angles...
var _min = abs(angle_difference(argument[0],argument[1])), _choose = 0;
for(var i=2;i<argument_count;i++) {
	var _test = abs(angle_difference(argument[0],argument[i]));
	if (_test < _min) {
		_min = _test;
		_choose = i - 1;
	}
}
return _choose;