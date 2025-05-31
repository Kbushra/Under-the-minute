if !global.flag[2] { exit; }
camera_set_view_pos(view_camera[0], choose(-1, 0, 1), choose(-1, 0, 1));

timer--;
if timer < 0
{
	instance_create_layer(irandom(room_width), irandom(room_height), "Important", objExplosion);
	timer = irandom_range(20, 30);
}

alpha += 0.005;
if alpha > 0.8
{
	camera_set_view_pos(view_camera[0], 0, 0);
	instance_create_layer(x, y, "Important", objCPU);
	instance_destroy();
}