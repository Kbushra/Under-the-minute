objPlayer.visible = false;

if keyboard_check_pressed(vk_escape)
{
	file_delete("Under-Minute");
	
	global.resX = 0;
	global.resY = 0;
	global.resRoom = rmIntro;
	global.act = "Act 1 - The Sleep";
	
	for (var i = 0; i < global.flagNum; i++) { global.flag[i] = false; }
}

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape)
{
	transition(-1);
	objTransition.image_index = 4;
	
	room_goto(global.resRoom);
	objPlayer.x = global.resX;
	objPlayer.y = global.resY;
	
	objPlayer.visible = true;
}