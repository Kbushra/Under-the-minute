if os_browser != browser_not_a_browser { window_set_size(1366, 768); }

randomize();

global.stage = 0;
global.controls = true;
global.flagNum = 4;

if variable_global_exists("respawn")
{
	transition(-1);
	objTransition.image_index = 4;
	
	room_goto(global.resRoom);
	objPlayer.x = global.resX;
	objPlayer.y = global.resY;
	
	exit;
}

global.musPos = 0;

ini_open("Under-Minute");

global.resX = ini_read_real("Location", "Spawn X", 0);
global.resY = ini_read_real("Location", "Spawn Y", 0);
global.resRoom = ini_read_real("Location", "Spawn Room", rmIntro);
global.act = ini_read_string("Location", "Spawn Name", "Act 1 - The Sleep");

for (var i = 0; i < global.flagNum; i++) { global.flag[i] = ini_read_real("Flags", $"Flag {i+1}", false); }
	
ini_close();