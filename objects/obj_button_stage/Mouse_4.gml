global.SelectedStage = stage;
global.StageGrid = load_csv_real(stage[? "stage_csv"]);

room_set_width(rm_stage, ds_grid_width(global.StageGrid)*CELL_WIDTH);
room_set_height(rm_stage, ds_grid_height(global.StageGrid)*CELL_HEIGHT);

room_goto(rm_stage);