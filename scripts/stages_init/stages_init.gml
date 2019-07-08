/// @desc Return a list containing the data of all stages

var stages = ds_list_create();

var stage_1_1 = ds_map_create();
ds_map_add(stage_1_1, "name", "Dummy stage");
ds_map_add(stage_1_1, "stage_csv", "stage_1_1.csv");
ds_map_add(stage_1_1, "selection_x", 60);
ds_map_add(stage_1_1, "selection_y", 60);
ds_list_add(stages, stage_1_1);

var stage_1_2 = ds_map_create();
ds_map_add(stage_1_2, "name", "Another stage");
ds_map_add(stage_1_2, "stage_csv", "stage_1_2.csv");
ds_map_add(stage_1_2, "selection_x", 100);
ds_map_add(stage_1_2, "selection_y", 90);
ds_list_add(stages, stage_1_2);

return stages;