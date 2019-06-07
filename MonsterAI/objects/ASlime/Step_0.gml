/// @description Insert description here
// You can write your code in this editor


move_towards_point(movePoint_x, movePoint_y, Speed);


if(!IsAttack)
{
	dist = distance_to_object(APlayer);
	
	if(dist < AttackRange)
	{
		IsAttack = true;
		Speed = 0;
	}
	else if(dist < chk_Player_Range)
	{
		IsChk_player = true;
		Speed = 3;
		movePoint_x = APlayer.x;
		movePoint_y = APlayer.y;
	}
	else
	{
		IsChk_player = false;
		Speed = 1;
	}
}
else
{
	sprite_index = SlimeAttack;
	if(image_index == 2){
		sprite_index = SlimeSpr;
		IsAttack = false;
	}
}