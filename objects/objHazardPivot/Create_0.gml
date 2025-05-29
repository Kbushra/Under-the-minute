if rand_time { _time = random(43200); }

for (var i = 0; i < 3; i++)
{
	if handnum != -1 && i != handnum { hand[i] = -1; continue; }
	
	hand[i] = instance_create_layer(x, y, layer, objHazardHand);
	hand[i].image_index = i;
	hand[i].image_xscale = image_xscale;
	hand[i].image_yscale = image_yscale;
	hand[i].depth = depth - 1;
	hand[i].totalSpd = totalSpd;
	hand[i]._time = _time;
}