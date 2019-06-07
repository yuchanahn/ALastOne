/// @description Insert description here
// You can write your code in this editor

if(IsAttack || IsChk_player)
{
	alarm[0] = 1;
	return;
}

if(!isPlayerInRange && !stop)
{
	
	movePoint_x = random(room_width);
	movePoint_y = random(room_height);
	stop = true;
	
	
	alarm[0] = random_range(MovementTimeMin,MovementTimeMax);
}
else if(stop)
{
	
	Speed = 0;
	stop = false;
	
	
	alarm[0] = random_range(StopTimeMin,StopTimeMax);
}

