function matrix_to_quaternion2(_posMat)
{
	var _q = {_w:0, _x:0, _y:0, _z:0};
    
    var tr = _posMat[0] + _posMat[5] + _posMat[10];
    var s;

    if (tr > 0) 
		{
	        s = 0.5 / sqrt(tr + 1.0);
	        _q._w = 0.25 / s;
	        _q._x = (_posMat[9] - _posMat[6]) * s;
	        _q._y = (_posMat[2] - _posMat[8]) * s;
	        _q._z = (_posMat[4] - _posMat[1]) * s;
		} 
	else if ((_posMat[0] > _posMat[5]) && (_posMat[0] > _posMat[10])) 
		{
	        s = 2.0 * sqrt(1.0 + _posMat[0] - _posMat[5] - _posMat[10]);
	        _q._w = (_posMat[9] - _posMat[6]) / s;
	        _q._x = 0.25 * s;
	        _q._y = (_posMat[1] + _posMat[4]) / s;
	        _q._z = (_posMat[2] + _posMat[8]) / s;
	    } 
	else if (_posMat[5] > _posMat[10]) 
		{
	        s = 2.0 * sqrt(1.0 + _posMat[5] - _posMat[0] - _posMat[10]);
	        _q._w = (_posMat[2] - _posMat[8]) / s;
	        _q._x = (_posMat[1] + _posMat[4]) / s;
	        _q._y = 0.25 * s;
	        _q._z = (_posMat[6] + _posMat[9]) / s;
	    } 
	else 
		{
	        s = 2.0 * sqrt(1.0 + _posMat[10] - _posMat[0] - _posMat[5]);
	        _q._w = (_posMat[4] - _posMat[1]) / s;
	        _q._x = (_posMat[2] + _posMat[8]) / s;
	        _q._y = (_posMat[6] + _posMat[9]) / s;
	        _q._z = 0.25 * s;
	    }
	var len = sqrt(_q._w * _q._w + _q._x * _q._x + _q._y * _q._y + _q._z * _q._z);
	_q._w /= len;
	_q._x /= len;
	_q._y /= len;
	_q._z /= len;

    return(_q);
}