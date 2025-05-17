for (var i = 0; i < 3; i++)
{
	hand[i] = instance_create_layer(x, y, layer, objHazardHand);
	hand[i].image_index = i;
	hand[i].image_xscale = image_xscale;
	hand[i].image_yscale = image_yscale;
	hand[i].depth = depth - 1;
	hand[i].totalSpd = totalSpd;
}