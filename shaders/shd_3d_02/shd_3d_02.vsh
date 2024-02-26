
attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;					 // (x,y,z)     
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying highp float v_DistanceToCamera;
varying vec3 v_Normal;
uniform float perspective_mod;
uniform float perspective_range;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
	if (	(perspective_mod > 1.) &&	(gl_Position.z > perspective_range)	)
		{
			vec4 mod_obj_space_pos = vec4(in_Position.x, in_Position.y, in_Position.z - pow(	(	(gl_Position.z + abs(gl_Position.x))/perspective_range),perspective_mod), 1.0);
			gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * mod_obj_space_pos;
		}
	if (	(perspective_mod < -1.) &&	(gl_Position.z > perspective_range)	)
		{
			vec4 mod_obj_space_pos = vec4(in_Position.x, in_Position.y, in_Position.z + pow(	(	(gl_Position.z + abs(gl_Position.x))/perspective_range),-perspective_mod), 1.0);
			gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * mod_obj_space_pos;
		}
	
	v_DistanceToCamera = gl_Position.z / gl_Position.w;
	v_DistanceToCamera -= (v_DistanceToCamera/ 4096.);
	v_DistanceToCamera = pow(v_DistanceToCamera, 32.);
	v_DistanceToCamera = 1. - v_DistanceToCamera;
	
	v_Normal = normalize(gm_Matrices[MATRIX_WORLD] * vec4(in_Normal.xyz,0.)).xyz;

	v_vTexcoord = in_TextureCoord;	
}
