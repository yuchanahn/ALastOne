// setting 몬스터 별로 바뀌는 세팅.
cur_HP = 1210;
MAX_HP = 1210;


bUseKnockBack = true;
_knockBackSpr = SlimeKnockBack;
_idleSpr = SlimeSpr;
_knockBackSprIdxMax = 2;
_knockBackTime = 30;
bKnockBack = false;

_speed  = 5;
_spdAcc = 1;

bUseAcc = true;

_ST		= EMonST.Move;
_MvST	= EMonMvST.MvRandom;

_timeMin[EMonST.Move] = 60;
_timeMax[EMonST.Move] = 50;

_timeMin[EMonST.Idle] = 50;
_timeMax[EMonST.Idle] = 60;

_speedMv[EMonMvST.MvPlayer] = 1.5;

_attackMgr = instance_create_layer(0, 0, AMain, AMonsterAtkMgr);

_attackMgr._attackSpr				= SlimeAttack;
_attackMgr._idleSpr					= SlimeSpr;
_attackMgr._attackEndIdx			= 2;
_attackMgr._attackDist				= 5;
_attackMgr._chkPlayerDist			= 150;
_attackMgr._beforAttack				= EMonST.Move;






// defult setting 권장.

showHPBar = false;

_targetPos = instance_create_layer(0, 0, AMain, Vector2D);

Set_Random_RoomSize(_targetPos);

_moveAble[EMonST.Attack] = 0;
_moveAble[EMonST.Idle] = 0;
_moveAble[EMonST.Move] = 1;
_moveAble[EMonST.KnockBack] = 1;

_speedMv[EMonMvST.MvRandom] = 1;

_dtTime[EMonST.Idle] = random_range(_timeMin[EMonST.Move], _timeMax[EMonST.Move]);
_dtTime[EMonST.Move] = random_range(_timeMin[EMonST.Idle], _timeMax[EMonST.Idle]);

_tick[EMonST.Move] = 0;
_tick[EMonST.Idle] = 0;

_knockBackDmg = 0;
_knockBackSpeedAcc = 0;
_knockBackTick = 0;