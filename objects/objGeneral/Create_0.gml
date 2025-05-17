global.controls = true;

if variable_global_exists("respawn")
{
	transition(-1);
	objTransition.image_index = 4;
	
	room_goto(global.resRoom);
	objPlayer.x = global.resX;
	objPlayer.y = global.resY;
	
	exit;
}

room_goto(rmIntro);