var atkMgr = argument0;

if(distance_to_object(APlayer) < atkMgr._attackDist)
{
	return true;
}

return false;