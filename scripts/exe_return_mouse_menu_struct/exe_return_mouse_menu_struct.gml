function exe_return_mouse_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 4.,	menu_ysize : 2.5,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 1.,
			minimised : 1,
			load_to_screen : 1,
			auto_update : 1,	auto_update_time : 3,
		};
	return(_struct);
}