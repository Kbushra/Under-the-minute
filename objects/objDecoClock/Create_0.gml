for (var i = 0; i < 3; i++)
{
	if handnum != -1 && i != handnum { continue; }
	
	var hand = instance_create_layer(x, y, layer, objDecoHand);
	hand.image_index = i;
	hand.image_xscale = image_xscale;
	hand.image_yscale = image_yscale;
	hand.depth = depth - 1;
	hand.totalSpd = totalSpd;
	hand._time = _time;
}