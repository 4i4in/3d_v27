function exe_map3d_add_helpers_objects(_map,_naming,_pos_arr,_control_method,_vbuffs_show,_vbuffs_colisions,_vbuffs_helpers)
{	
var _control = exe_return_control_method(_control_method);
	var _posMat = matrix_build(map3d.world_settings.world_x_start + _pos_arr[0], map3d.world_settings.world_y_start + _pos_arr[1], map3d.world_settings.world_z_start + _pos_arr[2], 0, 0, 0, 1, 1, 1);
	_posMat = matrix_multiply(matrix_build(0,0,0,_pos_arr[3],_pos_arr[4],_pos_arr[5],_pos_arr[6],_pos_arr[7],_pos_arr[8]), _posMat);
	_posMat = exe_matrix_orthonormalize(_posMat);
	
	var _v_submit = exe_return_v_submit(_posMat,1);
	
	var _hash = sha1_string_unicode(string(map3d));
	_naming[1] = _hash;
	
	
	var _obj = [	_posMat,_naming,_control,_v_submit,
					variable_clone(_vbuffs_show),		variable_clone(_vbuffs_show),
					variable_clone(_vbuffs_colisions),	variable_clone(_vbuffs_colisions),
					variable_clone(_vbuffs_helpers),	variable_clone(_vbuffs_helpers),
				];
	//	_posMat 0	|	_naming 1	|	_control 2	|	_v_submit 3 |
	//	vbuff transformed to draw 4	|	vbuff to draw original 5
	//	vbuff transformed colisions 6	|	vbuff colisions original 7
	//	vbuff transformed helpers 8	|	vbuff colisions helpers 9

	for(var _inbuff = 0; _inbuff < array_length(_obj[4][0]);_inbuff++)
		{
			var _original_vbuff = _obj[5][0][_inbuff];	//vbuff to draw
			_obj[4][0][_inbuff] = exe_rotate_buff_by_mat(_original_vbuff,_obj[3]);
		}
	for(var _inbuff = 0; _inbuff < array_length(_obj[6][0]);_inbuff++)
		{
			var _original_vbuff = _obj[7][0][_inbuff];	//vbuff colider
			_obj[6][0][_inbuff] = exe_rotate_buff_by_mat(_original_vbuff,_obj[3]);
		}	
	for(var _inbuff = 0; _inbuff < array_length(_obj[8][0]);_inbuff++)
		{
			var _original_vbuff = _obj[9][0][_inbuff];	//vbuff helper
			_obj[8][0][_inbuff] = exe_rotate_buff_by_mat(_original_vbuff,_obj[3]);
		}		
	
	array_push(_map.helpers_objects,_obj);
	return(_map);
}