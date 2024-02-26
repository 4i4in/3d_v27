function exe_change_show_obj_num(_carry)
{
	var _current_obj = menus.controled_obj.obj_num;
	_current_obj += _carry[0];
	if _current_obj < 0 {_current_obj = array_length(map3d.controlable_objects) -1;};
	if _current_obj > array_length(map3d.controlable_objects) -1	{_current_obj = 0;};
	menus.controled_obj.obj_num = _current_obj;
	
	reset_current_menu_array = 1;
}