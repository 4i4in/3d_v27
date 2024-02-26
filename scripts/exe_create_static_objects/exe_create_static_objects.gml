function exe_create_static_objects()
{
var _push_pos = [0,0,0,	0,-90,180,	1,1,1];
var _push_controler = ["none","none","none","none"];

var _push_vbuff_list =	[
							[vbuff_flat_terrain],
							[sprite_get_texture(tex_terrain,0)],
							[sprite_get_texture(tex_terrain,1)]
						];
var _push_colision_vbuff = [
							[vbuff_flat_terrain],
							[sprite_get_texture(tex_terrain,0)],
							[sprite_get_texture(tex_terrain,1)]
						];
var _helpers_vbuff =	[
							[vbuff_dir_arrow],
							[sprite_get_texture(tex_helpers,0)],
							[sprite_get_texture(tex_helpers,1)]
						];
var _naming = ["terrain",""];//second position would be filled with hash
map3d = exe_map3d_add_static_objects(map3d,_naming,_push_pos,_push_controler,_push_vbuff_list,_push_colision_vbuff,_helpers_vbuff);

}