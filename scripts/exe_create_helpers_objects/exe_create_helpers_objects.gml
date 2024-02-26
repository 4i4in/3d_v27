function exe_create_helpers_objects()
{
var _push_pos = [0,0,0,0,0,0,1,1,1];
var _push_controler = ["none","none","none","none"];

var _push_vbuff_list =	[
							[vbuff_empty],
							[sprite_get_texture(tex_empty,0)],
							[sprite_get_texture(tex_empty,1)]
						];
var _push_colision_vbuff = [
							[vbuff_empty],
							[sprite_get_texture(tex_empty,0)],
							[sprite_get_texture(tex_empty,1)]
						];
var _helpers_vbuff =	[
							[vbuff_dir_arrow],
							[sprite_get_texture(tex_helpers,0)],
							[sprite_get_texture(tex_helpers,1)]
						];
var _naming = ["world_origin",""];//second position would be filled with hash
map3d = exe_map3d_add_helpers_objects(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);



var _push_pos = [map3d.world_settings.world_sqr_size/2, map3d.world_settings.world_sqr_size/2, map3d.world_settings.world_sqr_size/2,0,0,0,1,1,1];
var _push_controler = ["none","none","none","none"];

var _push_vbuff_list =	[
							[vbuff_empty],
							[sprite_get_texture(tex_empty,0)],
							[sprite_get_texture(tex_empty,1)]
						];
var _push_colision_vbuff = [
							[vbuff_empty],
							[sprite_get_texture(tex_empty,0)],
							[sprite_get_texture(tex_empty,1)]
						];
var _helpers_vbuff =	[
							[vbuff_100x100_inverted_orientation],
							[sprite_get_texture(tex_cube_oriented_inside,0)],
							[sprite_get_texture(tex_cube_oriented_inside,1)]
						];
var _naming = ["space_orientation",""];//second position would be filled with hash
map3d = exe_map3d_add_helpers_objects(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);

}