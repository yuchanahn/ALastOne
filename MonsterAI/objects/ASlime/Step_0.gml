var bTick = false;

switch(_ST)
{
	case EMonST.KnockBack :
		if(image_index == _knockBackSprIdxMax)
		{
			sprite_index = _idleSpr;
		}
		else
		{
			bKnockBack = true;
		}
		bTick = false; 
	break;
	case EMonST.Attack : 
		if(image_index == _attackMgr._attackEndIdx)
		{
			_ST = EMonST.Idle;
			sprite_index = _attackMgr._idleSpr;
		}
		
		bTick = false; 
	break;
	case EMonST.Idle : 
	case EMonST.Move : 
		
		if		(distance_to_object(APlayer) < _attackMgr._attackDist)
		{
			_ST	= EMonST.Attack;
			sprite_index = _attackMgr._attackSpr;
		}
		else if	(distance_to_object(APlayer) < _attackMgr._chkPlayerDist)	
		{	
			_MvST = EMonMvST.MvPlayer;
			
		}
		else	
		{ 
			bTick   = true; 
			_MvST	= EMonMvST.MvRandom; 
		}
	
		switch(_MvST)
		{
			case EMonMvST.MvPlayer : 
				Set(_targetPos, APlayer.x, APlayer.y);
				break;
			case EMonMvST.MvRandom :
			default : 
				break;
		}
		
	break;
	default : 
	break;
}



if(bTick)
{
	_tick[_ST]++;
	_spdAcc = 1 - _tick[_ST] / _dtTime[_ST];
	if(_tick[_ST] >= _dtTime[_ST])
	{
		_spdAcc = 0;
		_tick[_ST] = 0;
		
		_ST = (_ST + 1) % 2;
		_dtTime[_ST] = random_range(_timeMin[_ST], _timeMax[_ST]);
		
		if(_ST == EMonST.Move) 
			Set_Random_RoomSize(_targetPos);
	}
}

if(bKnockBack)
{
	_knockBackTick++;
	if(_knockBackTick > _knockBackTime){
		_knockBackTick = 0;
		bKnockBack = false;
		_ST = EMonST.Idle;
		sprite_index = _idleSpr;
	}
	
	_knockBackSpeedAcc = 1 - _knockBackTick/_knockBackTime;
	curSpeed = _moveAble[EMonST.KnockBack] * _knockBackSpeedAcc;
}
else if (point_distance(_targetPos._x, _targetPos._y, x, y) < 1)
	curSpeed = 0;
else 
	curSpeed = _speed * _moveAble[_ST] *_speedMv[_MvST] * (bUseAcc ? _spdAcc : 1);


move_towards_point(_targetPos._x, _targetPos._y, curSpeed);