var Damage = argument0;
var _x = argument1;
var _y = argument2;

Dmtext = instance_create_depth(_x,_y, -1, DamageText);
Dmtext.damage = Damage;
Dmtext.Show = true;