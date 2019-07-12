/// @description layer_flash_begin();
/// @function layer_flash_begin
if (global.GameState != GameState.edit) exit;
shader_set(shd_flash);
shader_set_uniform_f(shader_get_uniform(shd_flash,"time"),current_time / FLASH_TIME);