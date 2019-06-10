if(state == EMonsterState.Idle)
{
	state = EMonsterState.Move;
	
	movePoint_x = random(room_width);
	movePoint_y = random(room_height);
	
	alarm[0] = random_range(MovementTimeMin, MovementTimeMax);
}
else if(state == EMonsterState.Move)
{
	state = EMonsterState.Idle;
	
	alarm[0] = random_range(StopTimeMin,StopTimeMax);
}