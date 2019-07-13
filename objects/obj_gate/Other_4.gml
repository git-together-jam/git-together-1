/// @description Create the gate

gateSegments = array_create(length);

if (mySwitch.on) {
	for (var i = 0; i < length; i++) {
		gateSegments[i] = instance_create_layer(
			x + (i*sprite_width)*horizontal,
			y + (i*sprite_width)*(!horizontal),
			layer, obj_gate_segment
		);
		gateSegments[i].image_index = horizontal;
	}

	currentIndex = length;
}