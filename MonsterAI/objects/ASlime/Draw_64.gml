//draw_text(x, y-60 ,_ST);


//draw_text(x, y-80 ,sprite_index);

draw_text(x - 20, y - 50, "Slime");

if(showHPBar)
{
	draw_healthbar(x-40, y-70, x+40, y-65, (cur_HP/MAX_HP) * 100, c_gray,c_red, c_green, 0, true, true);
}