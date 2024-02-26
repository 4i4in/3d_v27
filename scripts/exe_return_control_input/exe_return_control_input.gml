function exe_return_control_input(_struct)
{
	var _output = {};
	if _struct.input_from[0] == "pad_struct.pad_result_array"
		{
			var _pad_struct = pad_struct.pad_result_array[_struct.input_from[1]];
			var _in_mul = 0;
			if _struct.input_take == "direct"	{_in_mul = 1;};
			
			var _key = "input_mode";
			struct_set(_output, _key,	_struct.input_mode);
			var _key = "link_to";
			struct_set(_output, _key,	_struct.link_to);
			
			var _key = "strafe_fb";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "strafe_up";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "strafe_sides";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "tilt";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "pitch";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
			var _key = "yaw";
			struct_set(_output, _key,	exe_return_ci_for(_struct,_pad_struct,_key));
			
		}
	
	return(_output)
}