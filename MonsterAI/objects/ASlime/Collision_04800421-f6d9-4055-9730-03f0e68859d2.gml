

var AFBdamage_ = irandom_range(100, 300);

if(bUseKnockBack && _ST != EMonST.Attack)
{
	_knockBackDmg = 70/*스킬에 따라 달라짐.*/;
	
	_targetPos._x = x - (other.x - x) * _knockBackDmg;
	_targetPos._y = y - (other.y - y) * _knockBackDmg;
	
	_ST = EMonST.KnockBack;
	sprite_index = _knockBackSpr;
}
instance_destroy(other.id);

ADamageText(AFBdamage_, x, y-20);
cur_HP -= AFBdamage_;
showHPBar = true;
alarm[0] = 120;
if(cur_HP <= 0) instance_destroy();