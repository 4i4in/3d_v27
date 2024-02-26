function exe_destroy_cam_surf(_current_cam)
{
	surface_free(_current_cam.surf_color);
	surface_free(_current_cam.surf_normals);
	surface_free(_current_cam.surf_depth);
}