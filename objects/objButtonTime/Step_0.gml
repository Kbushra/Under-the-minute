depth = objPlayer.depth + 1;
image_index = place_meeting(x, y, objPlayer);

if image_index == 1 && !stop
{
	targPivot.totalSpd = 0;
	stop = true;
	
	var targHand = targPivot.hand[targClock.handnum];
	
	if targHand._time >= targClock._time - targHand.err && targHand._time <= targClock._time + targHand.err && targWire != -1
	{
		targClock.image_index = 2;
		instance_destroy(targWire);
		targWire = -1;
	}
	else { targClock.image_index = 3; }
}
else if image_index == 0 && stop
{
	targClock.image_index = 1;
	targPivot.totalSpd = normal;
	stop = false;
}