depth = objPlayer.depth + 1;

if place_meeting(x, y, objPlayer)
{
	if global.controls
	{
		global.controls = false;
		alarm[0] = 30;
	}
	
	objPlayer.x = lerp(objPlayer.x, x, 0.1);
	objPlayer.y = lerp(objPlayer.y, y, 0.1);
}