creationTimer--;

if creationTimer <= 0
{
	instance_create_layer(random(room_width), random(room_height), "Instances", objBytes);
	creationTimer = random_range(30, 60);
}

if lines == 0 && page == 6 { global.flag[3] = true; }