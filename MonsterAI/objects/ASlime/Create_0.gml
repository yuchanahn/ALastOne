/// @description Insert description here
// You can write your code in this editor

Speed = 1;

isPlayerInRange = false;

movePoint_x = random(room_width);
movePoint_y = random(room_height);

stop = true;
StopTimeMax = 120;
StopTimeMin = 0;

MovementTimeMax = 180;
MovementTimeMin = 60;

IsAttack = false;

AttackRange = 5;
chk_Player_Range = 150;
IsChk_player = false;

alarm[0] = random_range(MovementTimeMin,MovementTimeMax);