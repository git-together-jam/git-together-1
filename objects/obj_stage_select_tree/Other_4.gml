// fetch stages:
var stages = []
with (obj_button_stage) {
	stages[array_length_1d(stages)] = id;	
}
var num_stages = array_length_1d(stages);

// Relative Neighborhood Graph
for(var i=0; i<num_stages; i++) {
	var room_a = stages[i];
			
	for(var j=i+1;j<num_stages; j++) { // for each pair of rooms
		var skip = false;
		var room_b = stages[j];
				
		// get the distance between rooms
		var ab_dist = point_distance(room_a.x, room_a.y, room_b.x, room_b.y);
				
		for(var k=0; k<num_stages; k++) {
			if(k == i || k == j) continue;
			var room_c = stages[k];
					
			// get other distances
			var ac_dist = point_distance(room_a.x, room_a.y, room_c.x, room_c.y);
			var bc_dist = point_distance(room_b.x, room_b.y, room_c.x, room_c.y);
				
			// if ab distance is greater than the other two distances, then skip it
			if(ac_dist < ab_dist and bc_dist < ab_dist) skip = true;
			if(skip) break;
		}
		
		if(!skip) {
			if(ds_list_find_index(room_a.connected_stages, room_b) == -1) {
				ds_list_add(room_a.connected_stages, room_b)
			}
			
			if(ds_list_find_index(room_b.connected_stages, room_a) == -1) {
				ds_list_add(room_b.connected_stages, room_a)
			}
		}
	}
}