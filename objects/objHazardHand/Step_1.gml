if image_angle == 0
{
	if image_index == 0 { spd = 6; err = 2; }
	else if image_index == 1 { spd = 0.1; err = 120; }
	else { spd = 0.1/12; err = 7200; }
	
	image_angle = -1 * spd * _time;
}