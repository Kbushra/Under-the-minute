if image_angle == 0
{
	totalSpd = 1;

	if image_index == 0 { spd = 6; }
	else if image_index == 1 { spd = 0.1; }
	else { spd = 0.1/12; }

	image_angle = -1 * global.time * spd * totalSpd * delta_time / 1000000;
}