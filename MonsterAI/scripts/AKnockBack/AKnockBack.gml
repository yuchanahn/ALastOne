var _x = argument0;
var _y = argument1;
var pos = argument2;
var other_ = argument3;
var KnockBackPower = argument4;


Set(pos, _x + (other_.x - _x) * KnockBackPower, _x + (other_.y - _y) * KnockBackPower);