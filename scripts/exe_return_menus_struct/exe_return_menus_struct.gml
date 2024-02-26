function exe_return_menus_struct()
{
	var _struct = 
		{
			test_menu :			exe_return_test_menu_struct(),
			mouse_menu :		exe_return_mouse_menu_struct(),
			pad_menu :			exe_return_pad_menu_struct(),
			cam_menu :			exe_return_cam_menu_struct(),
			controled_obj :		exe_return_controled_obj_menu_struct(),
			graphic_control :	exe_return_graphic_control_menu_struct(),
		};
	return(_struct);
}