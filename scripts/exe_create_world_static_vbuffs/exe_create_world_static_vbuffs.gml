function exe_create_world_static_vbuffs()
{
	var _struct =
		{
			dice_helpers : exe_create_empty_vbuff(),
			dice_helpers_texC : sprite_get_texture(tex_helpers,0),
			dice_helpers_texN : sprite_get_texture(tex_helpers,1),
			
		}
	return(_struct);
}