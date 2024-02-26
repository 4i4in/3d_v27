function exe_return_cam_struct()
{
	var _struct = 
		{
			cam1 :
				{
					surf_color : surface_create(dgw/2,dgh/2),
					surf_normals : surface_create(dgw/2,dgh/2),
					surf_depth : surface_create(dgw/2,dgh/2,surface_r32float),
					camx : 0,	camy : 0,	camz : 0,
					camtox : 0,	camtoy : 0,	camtoz : 0,
					camxup : 0,	camyup : 0,	camzup : 0,
					pitch : 0,	yaw : 0,	tilt : 0,
					camxF : 0,	camyF : 0,	camzF : 0,
					camxR : 0,	camyR : 0,	camzR : 0,
					cam_lookat_dist : 100.,
					CamMat : -1,
					CamMatLookat : -1,
					ProjCamMat : -1,
					fov : 60,
					aspect : dgw/dgh,
					znear : 1.,	zfar : 5000.,
					show : {	
								geometry : 1,
								coliders : 0,
								helpers : 0,
								world_wrap : 1.,
							},
					perspective_mod : 2.,	perspective_range : 1000.,	
				},
			cam2 :
				{
					surf_color : surface_create(dgw/2,dgh/2),
					surf_normals : surface_create(dgw/2,dgh/2),
					surf_depth : surface_create(dgw/2,dgh/2,surface_r32float),
					camx : 0,	camy : 0,	camz : 0,
					camtox : 0,	camtoy : 0,	camtoz : 0,
					camxup : 0,	camyup : 0,	camzup : 0,
					pitch : 0,	yaw : 0,	tilt : 0,
					camxF : 0,	camyF : 0,	camzF : 0,
					camxR : 0,	camyR : 0,	camzR : 0,
					cam_lookat_dist : 100.,
					CamMat : -1,
					CamMatLookat : -1,
					ProjCamMat : -1,
					fov : 60,
					aspect : dgw/dgh,
					znear : 1.,	zfar : 5000.,
					show : {	
								geometry : 1,
								coliders : 0,
								helpers : 0,
								world_wrap : 1.,
							},
					perspective_mod : 0.,	perspective_range : 1000.,		
				}
		};
	return(_struct);
}