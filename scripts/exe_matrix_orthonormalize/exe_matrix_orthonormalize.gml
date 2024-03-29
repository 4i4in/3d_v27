function exe_matrix_orthonormalize(M)
{
	/*
		Kneel down mortal! Credit to @TheSnidr!
		This makes sure the three vectors of the given matrix are all unit length
		and perpendicular to each other, using the up direction as master.
		GameMaker does something similar when creating a lookat matrix. People often use [0, 0, 1]
		as the up direction, but this vector is not used directly for creating the view matrix; rather, 
		it's being used as reference, and the entire view matrix is being orthogonalized to the looking direction.
	*/
	var l = sqrt(M[8] * M[8] + M[9] * M[9] + M[10] * M[10]);
	if (l != 0)
	{
		l = 1 / l;
		M[@ 8] *= l;
		M[@ 9] *= l;
		M[@ 10]*= l;
	}
 
	M[@ 4] = M[9] * M[2] - M[10]* M[1];
	M[@ 5] = M[10]* M[0] - M[8] * M[2];
	M[@ 6] = M[8] * M[1] - M[9] * M[0];
	var l = sqrt(M[4] * M[4] + M[5] * M[5] + M[6] * M[6]);
	if (l != 0)
	{
		l = 1 / l;
		M[@ 4] *= l;
		M[@ 5] *= l;
		M[@ 6] *= l;
	}
 
	//The last vector is automatically normalized, since the two other vectors now are perpendicular unit vectors
	M[@ 0] = M[10]* M[5] - M[9] * M[6];
	M[@ 1] = M[8] * M[6] - M[10]* M[4];
	M[@ 2] = M[9] * M[4] - M[8] * M[5];
 
	return M;
}