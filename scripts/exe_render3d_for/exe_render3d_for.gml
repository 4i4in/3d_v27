function exe_render3d_for(_current_cam)
{
	exe_prepare_textures_3d(_current_cam);
	
	shader_set(shd_3d_02);
	surface_set_target_ext(0, _current_cam.surf_color);
	surface_set_target_ext(1, _current_cam.surf_normals);
	surface_set_target_ext(2, _current_cam.surf_depth);
	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "game_time"), game_time);	
	shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_range"), _current_cam.perspective_range);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/2));	
				break;
			case "vertical":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/4));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/2));			
				break;
			case "horizontal":
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgw"), 1.0/(dgw/2));
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "dgh"), 1.0/(dgh/4));		
				break;
		}
	var camera1 = camera_get_active();
	camera_set_view_mat(camera1, _current_cam.CamMatLookat);
	camera_set_proj_mat(camera1, _current_cam.ProjCamMat);
	camera_apply(camera1);

	
	for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
		{
			var _obj3d = map3d.controlable_objects[_ii];
			if _current_cam.show.geometry > 0	
				{	
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[4][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[4][0][_inbuff];
							var _tex_here =				_obj3d[4][1][_inbuff];
							var _tex_normal_here =		_obj3d[4][2][_inbuff];
							
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 1.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
							
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
							
							if _current_cam.show.world_wrap > 0	{exe_submit_duplicates_to_world(_buff_here,_tex_here,_obj3d[3][0],_obj3d[3][1],_obj3d[3][2]);};
						}
				}
			if _current_cam.show.coliders > 0	
				{	
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[6][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[6][0][_inbuff];
							var _tex_here =				_obj3d[6][1][_inbuff];
							var _tex_normal_here =		_obj3d[6][2][_inbuff];
							
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 0.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
							
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
						}
				}
			if _current_cam.show.helpers > 0	
				{	
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[8][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[8][0][_inbuff];
							var _tex_here =				_obj3d[8][1][_inbuff];
							var _tex_normal_here =		_obj3d[8][2][_inbuff];
							
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 0.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
							
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
						}
				}
		}
		
		
		
		
		
	if _current_cam.show.helpers > 0	
		{
			shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 0.);
			for(var _ii = 0; _ii < array_length(map3d.helpers_objects); _ii++)
				{
					var _obj3d = map3d.helpers_objects[_ii];
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[8][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[8][0][_inbuff];
							var _tex_here =				_obj3d[8][1][_inbuff];
							var _tex_normal_here =		_obj3d[8][2][_inbuff];
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 0.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), 0.);
							
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
						}
				}
		}
		
		
		
		
		
	for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
		{
			var _obj3d = map3d.static_objects[_ii];
			if _current_cam.show.geometry > 0	
				{	
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[4][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[4][0][_inbuff];
							var _tex_here =				_obj3d[4][1][_inbuff];
							var _tex_normal_here =		_obj3d[4][2][_inbuff];
							
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 1.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
							
							if _current_cam.show.world_wrap > 0	{exe_submit_duplicates_to_world(_buff_here,_tex_here,_obj3d[3][0],_obj3d[3][1],_obj3d[3][2]);};
							
						}
				}
			if _current_cam.show.coliders > 0	
				{	
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[6][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[6][0][_inbuff];
							var _tex_here =				_obj3d[6][1][_inbuff];
							var _tex_normal_here =		_obj3d[6][2][_inbuff];
							
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 0.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
						}
				}
			if _current_cam.show.helpers > 0	
				{	
					for(var _inbuff = 0; _inbuff < array_length(_obj3d[8][0]);_inbuff++)
						{
							var _buff_here =			_obj3d[8][0][_inbuff];
							var _tex_here =				_obj3d[8][1][_inbuff];
							var _tex_normal_here =		_obj3d[8][2][_inbuff];
							
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "cartoon_on"), 0.);
							shader_set_uniform_f(	shader_get_uniform(shd_3d_02, "perspective_mod"), _current_cam.perspective_mod);
							texture_set_stage(shader_get_sampler_index(shd_3d_02,"notmal_texture"),_tex_normal_here);
							exe_submit_to_world(_buff_here,_tex_here,_obj3d[3][0], _obj3d[3][1], _obj3d[3][2]);
						}
				}
		}	
		
	surface_reset_target();
	shader_reset();
	matrix_set(matrix_world, matrix_build_identity());
}