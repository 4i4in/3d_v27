function exe_return_test_menu_struct()
{
	var _struct = 
		{
			menu_xsize : 3.,	menu_ysize : 2.5,
			xref : floor(dgw/control_array.tile_size) - 2.5,	
			yref : 0.5,
			minimised : 1,
			load_to_screen : 1,
			auto_update : 1,	auto_update_time : 1,
		};
	return(_struct);
}