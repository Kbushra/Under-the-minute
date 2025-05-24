if timer <= 0 { global.flag[flag] = true; exit; }

if place_meeting(x, y, objPlayer)
{
	timer--;
	x = normX + choose(-1, 0, 1);
	y = normY + choose(-1, 0, 1);
}