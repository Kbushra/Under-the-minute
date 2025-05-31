// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kill()
{
	global.respawn = 0;
	global.resRoom = room;
	game_restart();
}

function change()
{
	room_goto(targRoom);
	objPlayer.x = targX;
	objPlayer.y = targY;
}

function transition(type)
{
	var t = instance_create_layer(0, 0, "Important", objTransition);
	t._type = type;
	t.origin = id;
	
	if type == 1
	{
		with (objPlayer)
		{
			visible = false;
			instance_create_layer(x, y, layer, objSplat);
		}
		
		if global.flag[3]
		{
			if instance_exists(objCPU) { instance_destroy(objCPU); }
			instance_create_layer(x, y, "Important", objCPU, { lines: -1 });
		}
	}
}