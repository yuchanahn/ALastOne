/// @description Insert description here
// You can write your code in this editor

enum EMonsterState
{
	Idle,
	Move,
	MoveToPlayer,
	Attack,
}



state = EMonsterState.Move;

m_Speed = 1;

movePoint_x = random(room_width);
movePoint_y = random(room_height);

StopTimeMax = 120;
StopTimeMin = 0;

MovementTimeMax = 180;
MovementTimeMin = 60;


AttackRange = 5;
chk_Player_Range = 150;

alarm[0] = random_range(MovementTimeMin,MovementTimeMax);