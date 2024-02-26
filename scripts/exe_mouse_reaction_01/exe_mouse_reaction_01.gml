function exe_mouse_reaction_01()
{
	mouse_struct.mx = window_mouse_get_x();//mouse_x;
	mouse_struct.my = window_mouse_get_y();//mouse_y;
	if mouse_struct.mtime < 0
		{
			if mouse_check_button(mb_left)	&& !mouse_check_button(mb_right)	
				{	
					mouse_struct.mlbutt = 1;	
					mouse_struct.mtime	=	mouse_struct.mcool;
				};
				
			if mouse_check_button(mb_right)		&& !mouse_check_button(mb_left)	
				{	
					mouse_struct.mrbutt = 1;
					mouse_struct.mtime	=	mouse_struct.mcool;
				};
		}
	else
		{
			mouse_struct.mlbutt = 0;
			mouse_struct.mrbutt = 0;
		}
	
	mouse_struct.function_executed = 0;
	mouse_struct.mtime--;
	if mouse_struct.mtime < -30	{	mouse_struct.mtime = -1;	};
}