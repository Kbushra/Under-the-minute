depth = objPlayer.depth + 1;
image_index = place_meeting(x, y, objPlayer);

if image_index == 1 && !magnified { targPivot.totalSpd = newSpd; magnified = true; }
else if image_index == 0 && magnified { targPivot.totalSpd = normal; magnified = false; }