Xkey = true;
var cSpeed = PlayerSpeed;
if(Xkey && YKey)
{
	cSpeed /= 2;
}
else
{
	py = y;
}
px = x;

x += PlayerSpeed;