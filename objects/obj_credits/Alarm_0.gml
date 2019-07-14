next ++;
if (next == num_of_credits) next = 0;

var _credit = ds_list_find_value(global.credits, next);

var entry = instance_create_depth(x, y, 0, obj_credit_entry);
with (entry) {
	credit = _credit;
}

alarm[0] = CREDIT_INTERVAL;