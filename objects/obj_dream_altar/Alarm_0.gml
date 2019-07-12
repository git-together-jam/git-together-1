///@description Create particles

if (dreams) {
	part_type_direction(partDreamy, 70, 180, 0, 1);
	part_particles_create(systemDreamy, bbox_left, bbox_top, partDreamy, 1);
	part_type_direction(partDreamy, 0, 110, 0, 1);
	part_particles_create(systemDreamy, bbox_right + 1, bbox_top, partDreamy, 1);
	alarm[0] = partFreq;
}