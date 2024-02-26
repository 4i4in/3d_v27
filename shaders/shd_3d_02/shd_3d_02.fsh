varying vec2 v_vTexcoord;
varying vec3 v_Normal;
varying float v_DistanceToCamera;


uniform float dgw;
uniform float dgh;
uniform float cartoon_on;
uniform float game_time;
 
uniform sampler2D notmal_texture;


vec3 toNormalColor(vec3 normal)
	{
		return normal * 0.5 + 0.5;	
	}
vec3 fromNormalColor(vec3 color)
	{
		return (color - 0.5) * 2.;
	}
void main()
{
	vec4 _base_color = texture2D( gm_BaseTexture, v_vTexcoord );

	if (_base_color.a < 0.75)	{discard;};
	

	vec4 sample_normal_color = texture2D( notmal_texture, v_vTexcoord );
	vec3 _sample_normal_v3 = vec3(fromNormalColor(sample_normal_color.rgb));
	
	_sample_normal_v3 = vec3(
								v_Normal.x * _sample_normal_v3.x	+v_Normal.x * _sample_normal_v3.y	+v_Normal.x * _sample_normal_v3.z,
								v_Normal.y * _sample_normal_v3.x	+v_Normal.y * _sample_normal_v3.y	+v_Normal.y * _sample_normal_v3.z,
								v_Normal.z * _sample_normal_v3.x	+v_Normal.z * _sample_normal_v3.y	+v_Normal.z * _sample_normal_v3.z
								);
	_sample_normal_v3 = clamp(_sample_normal_v3, vec3(-1.0), vec3(1.0));


	float amplitude = 1.0;
	float frequency = 0.005;
	float _x = sin(game_time * frequency) * amplitude;
	float _y = cos(game_time * frequency) * amplitude;
	vec3 lightDirection = normalize(vec3(_x, _y, -1));
	//vec3 lightDirection = normalize(vec3(1, 1, -1));
	
	if (cartoon_on > 0.5)
		{
			float NdotL = -dot(_sample_normal_v3, lightDirection);
			_base_color =	vec4(
									_base_color.r + sign(NdotL) *NdotL*NdotL*_base_color.r,
									_base_color.g + sign(NdotL) *NdotL*NdotL*_base_color.g,
									_base_color.b + sign(NdotL) *NdotL*NdotL*_base_color.b,
									1.
								);
			_base_color = clamp(_base_color,vec4(0.0), vec4(1.0));
		}
	else
		{
			vec4 lightAmbient = vec4(0.4, 0.4, 0.4, 1);
			float NdotL = max(0.0, -dot(_sample_normal_v3, lightDirection));
			_base_color = _base_color * vec4(min(lightAmbient + NdotL, vec4(1)).rgb, _base_color.a);
		}
	
	gl_FragData[0] = _base_color;
	gl_FragData[1] = vec4(toNormalColor(_sample_normal_v3.rgb),1.);
	gl_FragData[2] = vec4(v_DistanceToCamera,0.,0.,1.);
}
