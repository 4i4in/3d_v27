function exe_return_control_method(_control_method)
{
	var _control_struct = {};
	switch(_control_method[0])
		{
			case "direct":
				struct_set(_control_struct, "input_take",	_control_method[0]);
				struct_set(_control_struct, "input_mode",	_control_method[1]);
				struct_set(_control_struct, "link_to",		_control_method[2]);
				struct_set(_control_struct, "strafe_sides", [["leftjoyX","dpad_left","dpad_right"],[-1,1,-1]]);
				struct_set(_control_struct, "strafe_fb",	[["leftjoyY"],[-1]]);
				struct_set(_control_struct, "strafe_up",	[["dpad_up","dpad_down"],[1,-1]]);
				struct_set(_control_struct, "tilt",			[["l_trig","r_trig"],[-1,1]]);
				struct_set(_control_struct, "yaw",			[["rightjoyX"],[-1]]);
				struct_set(_control_struct, "pitch",		[["rightjoyY"],[1]]);
				break;
		};
	var _controller_string = string(_control_method[3]);//pad to number
	if string_starts_with(_controller_string,"pad")
		{
			var _pad_num = string_delete(_controller_string,1,3);
			_pad_num = real(_pad_num);
			struct_set(_control_struct, "input_from",		["pad_struct.pad_result_array",_pad_num]	);
		}
	return(_control_struct);	
}