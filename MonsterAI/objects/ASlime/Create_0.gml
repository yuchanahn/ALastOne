/// @description Insert description here
// You can write your code in this editor

enum EMonsterState
{
	Idle = 0,
	Move,
	MoveToPlayer,
	Attack,
}

BaseSpeed = 3;
SpeedAcc = 1;

// Idle Speed;
st_speed[0] = BaseSpeed * 0;


// Move Speed;
st_speed[1] = BaseSpeed * 1;


// MoveToPlayer Speed;
st_speed[2] = BaseSpeed * 1.5;


// Attack Speed;
st_speed[3] = BaseSpeed * 0;


state = EMonsterState.Move;

IsProcessTick = true;

movePoint_x = random(room_width);
movePoint_y = random(room_height);

StopTimeMax = 180;
StopTimeMin = 120;

tick = 0;

MovementTimeMax = 60;
MovementTimeMin = 50;

AttackRange = 5;
chk_Player_Range = 150;

MovementTime = random_range(MovementTimeMin,MovementTimeMax);

