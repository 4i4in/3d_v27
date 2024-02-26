function exe_change_perspective_mod(_carry)
{
	var _current_cam = menus.cam_menu.show_cam;
	var _current_cam_name = "cam"+string(_current_cam);
	
	cam_struct[$ _current_cam_name][$ "perspective_mod"] += _carry[0];
	
	reset_current_menu_array = 1;
}