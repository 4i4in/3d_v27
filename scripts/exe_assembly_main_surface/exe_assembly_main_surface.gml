function exe_assembly_main_surface()
{
	if !surface_exists(main_surface)	{main_surface = surface_create(dgw,dgh);};
	surface_set_target(main_surface);
	draw_clear_alpha(c_white,0);
	switch(menus.graphic_control.show_surf)
		{
			case "surf_separate":
				switch(menus.graphic_control.split_screen)
					{
						case "none":
							if surface_exists(cam_struct.cam1.surf_color)	{draw_surface(cam_struct.cam1.surf_color,0,0);};
							if surface_exists(cam_struct.cam1.surf_normals)	{draw_surface(cam_struct.cam1.surf_normals,dgw/2,0);};
							if surface_exists(cam_struct.cam1.surf_depth)	{draw_surface(cam_struct.cam1.surf_depth,0,dgh/2);};	
							break;
						case "vertical":
							if surface_exists(cam_struct.cam1.surf_color)	{draw_surface(cam_struct.cam1.surf_color,0,0);};
							if surface_exists(cam_struct.cam1.surf_normals)	{draw_surface(cam_struct.cam1.surf_normals,dgw/4,0);};
							if surface_exists(cam_struct.cam1.surf_depth)	{draw_surface(cam_struct.cam1.surf_depth,0,dgh/2);};	
							
							if surface_exists(cam_struct.cam2.surf_color)	{draw_surface(cam_struct.cam2.surf_color,dgw/2,0);};
							if surface_exists(cam_struct.cam2.surf_normals)	{draw_surface(cam_struct.cam2.surf_normals,dgw*3/4,0);};
							if surface_exists(cam_struct.cam2.surf_depth)	{draw_surface(cam_struct.cam2.surf_depth,dgw/2,dgh/2);};
							break;
						case "horizontal":	
							if surface_exists(cam_struct.cam1.surf_color)	{draw_surface(cam_struct.cam1.surf_color,0,0);};
							if surface_exists(cam_struct.cam1.surf_normals)	{draw_surface(cam_struct.cam1.surf_normals,dgw/2,0);};
							if surface_exists(cam_struct.cam1.surf_depth)	{draw_surface(cam_struct.cam1.surf_depth,0,dgh/4);};	
							
							if surface_exists(cam_struct.cam2.surf_color)	{draw_surface(cam_struct.cam2.surf_color,0,dgh/2);};
							if surface_exists(cam_struct.cam2.surf_normals)	{draw_surface(cam_struct.cam2.surf_normals,dgw/2,dgh/2);};
							if surface_exists(cam_struct.cam2.surf_depth)	{draw_surface(cam_struct.cam2.surf_depth,0,dgh*3/4);};
							break;
					}
				break;
			case "surf_single":
				switch(menus.graphic_control.split_screen)
					{
						case "none":
							if surface_exists(cam_struct.cam1.surf_color)	{draw_surface_ext(cam_struct.cam1.surf_color,0,0,2,2,0,-1,1);};
							break;
						case "vertical":
							if surface_exists(cam_struct.cam1.surf_color)	{draw_surface_ext(cam_struct.cam1.surf_color,0,0,2,2,0,-1,1);};
							if surface_exists(cam_struct.cam2.surf_color)	{draw_surface_ext(cam_struct.cam2.surf_color,dgw/2,0,2,2,0,-1,1);};
							break;
						case "horizontal":
							if surface_exists(cam_struct.cam1.surf_color)	{draw_surface_ext(cam_struct.cam1.surf_color,0,0,2,2,0,-1,1);};
							if surface_exists(cam_struct.cam2.surf_color)	{draw_surface_ext(cam_struct.cam2.surf_color,0,dgh/2,2,2,0,-1,1);};
							break;
					}
				
				break;
			
		};
	
	surface_reset_target();
}