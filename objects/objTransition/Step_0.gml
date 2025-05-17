depth = -999;

if image_index > 4
{
	if _type == 0 { with (origin) { change(); } }
	if _type == 1 { kill(); }
	
	global.controls = true;
}

if image_index > 9 { instance_destroy(); }