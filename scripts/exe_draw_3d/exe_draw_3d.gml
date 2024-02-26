function exe_draw_3d()
{
	gpu_set_ztestenable(true);
	gpu_set_cullmode(cull_clockwise);
	
	switch(menus.graphic_control.split_screen)
		{
			case "none":
				var _current_cam = cam_struct.cam1;
				exe_render3d_for(_current_cam);		
				break;
			case "vertical":
				var _current_cam = cam_struct.cam1;
				exe_render3d_for(_current_cam);		
				var _current_cam = cam_struct.cam2;
				exe_render3d_for(_current_cam);		
				break;
			case "horizontal":
				var _current_cam = cam_struct.cam1;
				exe_render3d_for(_current_cam);		
				var _current_cam = cam_struct.cam2;
				exe_render3d_for(_current_cam);		
				break;
		}
	
	
	matrix_set(matrix_world, matrix_build_identity());
	gpu_set_ztestenable(false);
	gpu_set_cullmode(cull_noculling);

	//TBD postprocess here
	
	exe_assembly_main_surface();
	
}