//Main Process...
switch(state)
{
	case EMonsterState.Attack : 
	
		sprite_index = SlimeAttack;
		
		if(image_index == 2)
		{
			sprite_index = SlimeSpr;
			state = EMonsterState.Move;
		}
		
		break;
		
	case EMonsterState.Idle :
	case EMonsterState.MoveToPlayer :
	case EMonsterState.Move :
	default :
	
		prevState = state;
		dist = distance_to_object(APlayer);
		
		if		(dist < AttackRange)		
		{
			state = EMonsterState.Attack;
		}
		else if	(dist < chk_Player_Range)
		{
			SpeedAcc = 1;
			movePoint_x = APlayer.x;
			movePoint_y = APlayer.y;
			state = EMonsterState.MoveToPlayer;
		}
		else
		{
			
			if(prevState != EMonsterState.Move)
			{
				tick = 0;
				movePoint_x = random(room_width);
				movePoint_y = random(room_height);
				state = EMonsterState.Move;
				MovementTime = random_range(MovementTimeMin, MovementTimeMax);
			}
			if(state == EMonsterState.Idle)
				MovementTime = random_range(StopTimeMin, StopTimeMax);
		}
		
		break;
}



// tick 계산 할지 말지 결정.

switch(state)
{
	case EMonsterState.Idle			: 
	case EMonsterState.Move			: 
		IsProcessTick = true;  
		SpeedAcc = 1 - tick/MovementTime; 
		++tick; 
		break;
	default							: IsProcessTick = false; break;
}

// tick 계산 프로세스.
if(IsProcessTick && tick > MovementTime)
{
	SpeedAcc = 1;
	tick = 0;
	switch(state)
	{
		case EMonsterState.Idle			: state = EMonsterState.Move;
		case EMonsterState.Move			: state = EMonsterState.Idle;
	
		default							: break;
	}
	movePoint_x = random(room_width);
	movePoint_y = random(room_height);
}


move_towards_point(movePoint_x, movePoint_y, st_speed[state] * SpeedAcc);

