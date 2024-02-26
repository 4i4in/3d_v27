function exe_prepare_textures_3d(_current_cam)
{
	switch(menus.graphic_control.split_screen)
		{
			case "none":
				if !surface_exists(_current_cam.surf_color)		{_current_cam.surf_color = surface_create(dgw/2,dgh/2);};
				if !surface_exists(_current_cam.surf_normals)	{_current_cam.surf_normals = surface_create(dgw/2,dgh/2);};
				if !surface_exists(_current_cam.surf_depth)		{_current_cam.surf_depth = surface_create(dgw/2,dgh/2,surface_r32float);};
				break;
			case "vertical":
				if !surface_exists(_current_cam.surf_color)		{_current_cam.surf_color = surface_create(dgw/4,dgh/2);};
				if !surface_exists(_current_cam.surf_normals)	{_current_cam.surf_normals = surface_create(dgw/4,dgh/2);};
				if !surface_exists(_current_cam.surf_depth)		{_current_cam.surf_depth = surface_create(dgw/4,dgh/2,surface_r32float);};
				break;
			case "horizontal":
				if !surface_exists(_current_cam.surf_color)		{_current_cam.surf_color = surface_create(dgw/2,dgh/4);};
				if !surface_exists(_current_cam.surf_normals)	{_current_cam.surf_normals = surface_create(dgw/2,dgh/4);};
				if !surface_exists(_current_cam.surf_depth)		{_current_cam.surf_depth = surface_create(dgw/2,dgh/4,surface_r32float);};
				break;
		};
	
	surface_set_target(_current_cam.surf_color);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
	
	surface_set_target(_current_cam.surf_normals);
	draw_clear_alpha(c_black,0);
	surface_reset_target();	
	
	surface_set_target(_current_cam.surf_depth);
	draw_clear_alpha(c_black,0);
	surface_reset_target();		
}