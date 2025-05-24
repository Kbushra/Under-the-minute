if image_angle == 0
{
	if image_index == 0 { spd = 6; }
	else if image_index == 1 { spd = 0.1; }
	else { spd = 0.1/12; }
	
	image_angle = -1 * spd * _time;
}