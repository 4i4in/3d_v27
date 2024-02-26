function exe_perform_moves_on_map3d()
{
	if array_length(map3d.controlable_objects) > 0
		{
			for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
				{
					var _obj = 	map3d.controlable_objects[_ii];
					if struct_names_count(_obj[2]) > 0	//perform movement
						{
							var _input_call = exe_return_control_input(_obj[2]);
							var _posMat = _obj[0];
							
						var _speed_mul = 5;	
						var _speed_turn_mul = 2;	
							//TBD if any input call
							if _input_call.input_mode == "relative"
								{
									_posMat = matrix_multiply(matrix_build(0, 0, 0,_speed_turn_mul*	_input_call.tilt,_speed_mul*	_input_call.pitch,	_speed_mul*	_input_call.yaw,	1, 1, 1), _posMat);
									_posMat = exe_matrix_orthonormalize(_posMat);
									var _delta = [0,0,0];
							
									_delta = exe_move_fb(_delta,_posMat,_speed_mul*_input_call.strafe_fb);
									_delta = exe_move_updown(_delta,_posMat,_speed_mul*_input_call.strafe_up);
									_delta = exe_move_sides(_delta,_posMat,_speed_mul*_input_call.strafe_sides);
								}
							_posMat = exe_delta_add_Mat(_delta,_posMat);
							_posMat = exe_exe_wrap_map(_posMat);
							_obj[0] = _posMat;
							
							_obj[3] = exe_return_v_submit(_posMat,1);
					
							if string_starts_with(string(_input_call.link_to),"cam")
								{
									exe_update_cam_from_object(_input_call.link_to,_posMat);
								}
								
							//transform vbuff to draw
							for(var _inbuff = 0; _inbuff < array_length(_obj[4][0]);_inbuff++)
								{
									var _buff_here =			_obj[4][0][_inbuff];
									vertex_delete_buffer(_buff_here);
									
									var _original_vbuff = _obj[5][0][_inbuff];

									map3d.controlable_objects[_ii][4][0][_inbuff] = exe_rotate_buff_by_mat(_original_vbuff,_obj[3]);
								}
							//transform vbuff colider
							for(var _inbuff = 0; _inbuff < array_length(_obj[6][0]);_inbuff++)
								{
									var _buff_here =			_obj[6][0][_inbuff];
									vertex_delete_buffer(_buff_here);
									
									var _original_vbuff = _obj[7][0][_inbuff];

									map3d.controlable_objects[_ii][6][0][_inbuff] = exe_rotate_buff_by_mat(_original_vbuff,_obj[3]);
								}
							//transform vbuff helpers
							for(var _inbuff = 0; _inbuff < array_length(_obj[8][0]);_inbuff++)
								{
									var _buff_here =			_obj[8][0][_inbuff];
									vertex_delete_buffer(_buff_here);
									
									var _original_vbuff = _obj[9][0][_inbuff];

									map3d.controlable_objects[_ii][8][0][_inbuff] = exe_rotate_buff_by_mat(_original_vbuff,_obj[3]);
								}
							
							
						}
					

				}
		}
}