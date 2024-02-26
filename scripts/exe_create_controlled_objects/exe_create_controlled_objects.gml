function exe_create_controlled_objects()
{
var _push_pos = [600,500,550,180,0,0,1,1,1];
var _push_controler = ["direct","relative","cam1","pad0"];

var _push_vbuff_list =	[
							[vbuff_bs_x_bs_cube_oriented],
							[sprite_get_texture(tex_cam_oriented,0)],
							[sprite_get_texture(tex_cam_oriented,1)]
						];
var _push_colision_vbuff = [
							[vbuff_bs_x_bs_cube_oriented],
							[sprite_get_texture(tex_cam_oriented,0)],
							[sprite_get_texture(tex_cam_oriented,1)]
						];
var _helpers_vbuff =	[
							[vbuff_dir_arrow],
							[sprite_get_texture(tex_helpers,0)],
							[sprite_get_texture(tex_helpers,1)]
						];
var _naming = ["cam_obj1",""];
map3d = exe_map3d_add_controlable_object(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);





var _push_pos = [500,550,550,180,0,180,1,1,1];
var _push_controler = ["direct","relative","cam2","pad1"];

var _push_vbuff_list =	[
							[vbuff_bs_x_bs_cube_oriented],
							[sprite_get_texture(tex_cam_oriented,0)],
							[sprite_get_texture(tex_cam_oriented,1)]
						];
var _push_colision_vbuff = [
							[vbuff_bs_x_bs_cube_oriented],
							[sprite_get_texture(tex_cam_oriented,0)],
							[sprite_get_texture(tex_cam_oriented,1)]
						];
var _helpers_vbuff =	[
							[vbuff_dir_arrow],
							[sprite_get_texture(tex_helpers,0)],
							[sprite_get_texture(tex_helpers,1)]
						];
var _naming = ["cam_obj2",""];
map3d = exe_map3d_add_controlable_object(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);



}