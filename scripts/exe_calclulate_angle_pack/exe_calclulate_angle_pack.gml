function exe_calclulate_angle_pack(_vec3_up,_vec3_forward,_vec3_right)
{
	var _yaw = 0;	var _pitch = 0; var _tilt = 0;
	
	_yaw = radtodeg(arctan2(_vec3_forward[0], _vec3_forward[1]));
	_pitch = radtodeg(arctan2(_vec3_up[2], point_distance(0,0,_vec3_up[0],_vec3_up[1])));
	_tilt = radtodeg(arctan2(_vec3_forward[2], point_distance(0, 0, _vec3_forward[0], _vec3_forward[1])));
	
	var _angle_pack = [_yaw,_pitch,_tilt];
	return(_angle_pack);
}