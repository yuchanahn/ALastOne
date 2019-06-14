if(Show)
{
	tick++;
	alpa -= 0.03;
	y -= 0.7;
	if(tick > 60){
		instance_destroy();
	}
}