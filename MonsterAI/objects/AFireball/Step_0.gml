if(Start)
{
	move_towards_point(cx, cy, curSpeed);
	tick++;
	if(tick > 60)
	{
		instance_destroy();
	}
	else if(distance_to_point(cx, cy) < 1)
	{
		instance_destroy();
	}
}