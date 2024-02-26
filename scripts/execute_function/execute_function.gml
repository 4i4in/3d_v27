function execute_function(_func,_carry,_txt)
{
	var _fexe = 0; // function_executed
	switch(_func)
		{
			case "show_rclick_info":
				if string(_txt) == string(mouse_info.txt)	{_txt="";};
				mouse_info.txt = _txt;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
				_fexe = 1;	break;
				
			case "exe_move_menu_by_click":	exe_move_menu_by_click(_carry);	_fexe = 1;	break;
			case "exe_min_max_menu" : exe_min_max_menu_by_click(_carry); _fexe = 1;	break;
			
			case "exe_change_show_pad" : exe_change_show_pad(_carry); _fexe = 1;	break;
			case "exe_change_show_cam" : exe_change_show_cam(_carry); _fexe = 1;	break;
			case "exe_swich_help_in_menu" : exe_swich_help_in_menu(_carry); _fexe = 1;	break;
			case "exe_change_show_obj_num" : exe_change_show_obj_num(_carry); _fexe = 1;	break;
			case "exe_switch_show_surf" : exe_switch_show_surf(_carry); _fexe = 1;	break;
			case "exe_switch_split_screen" : exe_switch_split_screen(_carry); _fexe = 1;	break;
			
			case "exe_switch_in_cam" : exe_switch_in_cam(_carry); _fexe = 1;	break;
			
			case "exe_change_perspective_mod" :		exe_change_perspective_mod(_carry); _fexe = 1;	break;
			case "exe_change_perspective_range" : exe_change_perspective_range(_carry); _fexe = 1;	break;
			
		}
	mouse_struct.function_executed = _fexe;
}