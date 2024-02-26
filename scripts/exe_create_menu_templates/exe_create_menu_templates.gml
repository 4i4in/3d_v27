function exe_create_menu_templates()
{
	var _menu_templates = [];
	
	var _push_name = "test_menu";
	var _push_menu = exe_create_test_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "mouse_menu";
	var _push_menu = exe_create_mouse_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "pad_menu";
	var _push_menu = exe_create_pad_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "cam_menu";
	var _push_menu = exe_create_cam_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "controled_obj_menu";
	var _push_menu = exe_create_controled_obj_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "graphic_control_menu";
	var _push_menu = exe_create_graphic_control_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	return(_menu_templates);
}