randomize();
window_set_fullscreen(true);
game_set_speed(60, gamespeed_fps);
//dgw = display_get_width();
//dgh = display_get_height();
window_set_showborder(false);
dgw = window_get_width();
dgh = window_get_height();

room_set_width(room, dgw);
room_set_height(room,dgh);
room_goto(room);		
surface_resize(application_surface,dgw,dgh);

//gpu_set_ztestenable(true); //this only in 3d
gpu_set_zwriteenable(true);
gpu_set_texfilter(false);
surface_depth_disable(false);
gpu_set_texrepeat(true);


gc_enable(true);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vformat = vertex_format_end();


x_scale = dgw/1920;	//scaling is just in case of adaptive window size turned on
y_scale = dgh/1080;
icon_scale = x_scale;
tile_base_size = 64;
game_time = 0;


mouse_struct = 
	{
		mx : -1, my : -1, mtime : -1,	mlbutt : 0, mrbutt : 0, mcool : 15,	function_executed : 0,	
		func_carry : [],
	};
max_pads = 4; //max is 12, if You need,,,	
pad_struct = 
	{
		pad_array : [],	
		pad_maping : exe_preset_pad_mapping(), 
		pad_result_array : exe_preset_pad_results(),
	};
	
click_restricted = [];	reset_current_menu_array = 1;	current_restricted = -1;
mouse_info =
	{
		txt : "",	mx : -1,	my : -1,
	};
control_array = 
	{
		tile_size : floor(tile_base_size*icon_scale),	current_menu_array : [],
	};

cam_struct = exe_return_cam_struct();
exe_set_cam("cam1");	exe_set_cam("cam2");

main_surface = surface_create(dgw,dgh);

menus = exe_return_menus_struct();
menu_templates = exe_create_menu_templates();

//creating 3d world
var _worldsize = 5000;
map3d =	
	{
		world_settings :
			{
				world_sqr_size : _worldsize,
				world_x_start: _worldsize,
				world_y_start: _worldsize,
				world_z_start: _worldsize,
			},		
		controlable_objects : [],
		helpers_objects : [],
		static_objects : [],
		//world_static : exe_create_world_static_vbuffs(),
	};

exe_create_basic_vbuffs();


exe_create_controlled_objects();
exe_create_helpers_objects();
exe_create_static_objects();

//map3d = exe_map3d_add_helpers_grid(map3d,100,10);






