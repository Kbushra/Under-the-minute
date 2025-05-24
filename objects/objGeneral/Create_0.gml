if os_browser != browser_not_a_browser { window_set_size(1366, 768); }

randomize();

global.controls = true;
for (var i = 0; i < 2; i++) { global.flag[i] = false; }

if variable_global_exists("respawn")
{
	transition(-1);
	objTransition.image_index = 4;
	
	room_goto(global.resRoom);
	objPlayer.x = global.resX;
	objPlayer.y = global.resY;
	
	exit;
}