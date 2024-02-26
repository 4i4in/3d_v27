function exe_create_basic_vbuffs()
{
	vbuff_empty = exe_create_empty_vbuff();
	
	exe_vbuff_bs_x_bs_cube_oriented(10);
	exe_vbuff_d20(10);
	
	exe_vbuff_100x100_inverted_orientation(map3d.world_settings.world_sqr_size);	//global helper for orientation
	
	exe_vbuff_dir_arrow(5);
	
	exe_vbuff_flat_terrain(map3d.world_settings.world_sqr_size,50,10,terrain_1_input,50,2);

	
	var temp_buff_data = buffer_load("wall512x256x64.vbuff");
	temp_buff_data = exe_corect_normals_on_open_vbuff(temp_buff_data);
	wall512x256x64 = vertex_create_buffer_from_buffer(temp_buff_data, vformat);
	buffer_delete(temp_buff_data);
	//vertex_freeze(wall512x256x64);
	
	
}