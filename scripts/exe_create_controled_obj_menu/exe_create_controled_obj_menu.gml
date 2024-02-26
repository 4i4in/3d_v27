function exe_create_controled_obj_menu()
{
	var _this_menu = [];
	
	if menus.controled_obj.minimised > 0	//minimsed
		{
			var _menu_xsize = 3;	var _menu_ysize = 0.5;
			var _xref = menus.controled_obj.xref;	
			var _yref = menus.controled_obj.yref;
	
			var _tsize = control_array.tile_size;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.controled_obj"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "controled_obj"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.controled_obj"];	var _info = "info controled_obj";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.controled_obj"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.controled_obj.menu_xsize;	var _menu_ysize = menus.controled_obj.menu_ysize;
			var _xref = menus.controled_obj.xref;	
			var _yref = menus.controled_obj.yref;
	
			var _tsize = control_array.tile_size;
			
			var _y_add = 0;
			if	array_length(map3d.controlable_objects) > 0
				{
					var _cnum = menus.controled_obj.obj_num;
					var _obj = map3d.controlable_objects[_cnum];
					var _str_arr = struct_get_names(_obj[2]);
					_y_add = array_length(_str_arr) * 0.5;
				}
				
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize + _y_add];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.controled_obj"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "controled_obj"; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.controled_obj"];
			var _info = "info controled_obj";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.controled_obj"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			if array_length(map3d.controlable_objects) > 0
				{
					_yref += _button_size[1]+0.1;
					_xref = _restricted[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "<<"; var _lclick = "exe_change_show_obj_num"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "minimise by click";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
			
					_xref += _button_size[0];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "object : " + string(menus.controled_obj.obj_num) + " | " + string(_obj[3]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map3d.controlable_objects is empty;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0];
					var _button_size = [0.5,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = ">>"; var _lclick = "exe_change_show_obj_num"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "minimise by click";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_yref += _button_size[1];
					_xref = _restricted[0];
					var _button_size = [10,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = "MAT : " + string(_obj[0]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "obj matrix";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_yref += _button_size[1];
					_xref = _restricted[0];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "vbuff : " + string(_obj[4]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "obj matrix";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_yref += _button_size[1];
					_xref = _restricted[0];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "colision model : " + string(_obj[6]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "obj matrix";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_yref += _button_size[1];
					_xref = _restricted[0];
					var _button_size = [2,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "control : "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "obj matrix";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
					
					_xref += _button_size[0];
					var _keep_xref = _xref;
					for(var _ii = 0; _ii < array_length(_str_arr); _ii++)
						{
							var _skey =  string(_str_arr[_ii]);
							var _show = _obj[2][$ _skey];
							
							var _button_size = [8,0.5];
							var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
							var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
							var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
							var _btext = _skey + " " + string(_show); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "obj matrix";
							var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
							array_push(_this_menu,_button);
							_xref = _keep_xref;
							_yref += _button_size[1];
						}
					
					_yref += _button_size[1];
					_xref = _restricted[0];
					var _button_size = [7,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "";	var _pic_mo = string(_pic);	var _mouse_over = 0;
					var _btext = "hash : " + string(_obj[1][1]); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "obj matrix";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
			else
				{
					_yref += _button_size[1];
					_xref = _restricted[0];
					var _button_size = [4,0.5];
					var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
					var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
					var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
					var _btext = "no controlable_objects"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map3d.controlable_objects is empty;";
					var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
					array_push(_this_menu,_button);
				}
		}
	
	return(_this_menu);
}