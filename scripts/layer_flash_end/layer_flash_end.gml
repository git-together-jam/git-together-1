/// @description layer_flash_end();
/// @function layer_flash_end
if !(global.GameState == GameState.edit || global.GameState == GameState.play) exit;
shader_reset();