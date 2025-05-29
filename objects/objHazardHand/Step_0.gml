for (var count = 0; count < abs(totalSpd); count++)
{
	image_angle -= spd * totalSpd * delta_time / 1000000;
	_time += totalSpd * delta_time / 1000000;
	
	if image_index == 0 { _time %= 60; }
	if image_index == 1 { _time %= 3600; }
	if image_index == 2 { _time %= 43200; }
	
	if place_meeting(x, y, objPlayer) && !instance_exists(objTransition) { transition(1); }
}

if totalSpd == 0 && place_meeting(x, y, objPlayer) && !instance_exists(objTransition) { transition(1); }