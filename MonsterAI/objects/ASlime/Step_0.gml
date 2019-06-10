Speed = m_Speed;

switch(state)
{
	case EMonsterState.Attack : Speed = 0;
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
		if		(state == EMonsterState.MoveToPlayer)	Speed = 3;
		else if	(state == EMonsterState.Idle)			Speed = 0;
		
		dist = distance_to_object(APlayer);
		
		if		(dist < AttackRange)		
		{
			state = EMonsterState.Attack;
		}
		else if	(dist < chk_Player_Range)
		{
			movePoint_x = APlayer.x;
			movePoint_y = APlayer.y;
			state = EMonsterState.MoveToPlayer;
		}
		else 
		{
			alarm[0] = 1;
			state = EMonsterState.Idle;
		}
		break;
	default : break;
}


move_towards_point(movePoint_x, movePoint_y, Speed);








