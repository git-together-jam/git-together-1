/// @description layer_alpha_begin();
/// @function layer_alpha_begin
if !(global.GameState == GameState.edit || global.GameState == GameState.play) exit;
shader_set(shd_alpha);
shader_set_uniform_f(shader_get_uniform(shd_alpha,"alpha"), global.edBottomAlpha);