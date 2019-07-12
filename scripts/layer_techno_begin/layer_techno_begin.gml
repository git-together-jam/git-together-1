/// @description layer_techno_begin();
/// @function layer_techno_begin
shader_set(shd_techno_lines);
shader_set_uniform_f(shader_get_uniform(shd_techno_lines,"R"),TECHNO_R);
shader_set_uniform_f(shader_get_uniform(shd_techno_lines,"G"),TECHNO_G);
shader_set_uniform_f(shader_get_uniform(shd_techno_lines,"B"),TECHNO_B);
shader_set_uniform_f(shader_get_uniform(shd_techno_lines,"time"),current_time / TECHNO_TIME);