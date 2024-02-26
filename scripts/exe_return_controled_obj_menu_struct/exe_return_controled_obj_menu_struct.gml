function exe_return_controled_obj_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 10.,	menu_ysize : 3.5,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 2.5,
			minimised : 1,
			load_to_screen : 1,
			auto_update : 1,	auto_update_time : 3,
			obj_num: 0,
		};
	return(_struct);
}