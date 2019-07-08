available_blocks = ds_list_create();
ds_list_copy(available_blocks, global.SelectedStage[?"blocks"]);

global.SelectedBlock = undefined;
if (ds_list_size(available_blocks) > 0) {
	global.SelectedBlock = available_blocks[|0];
}