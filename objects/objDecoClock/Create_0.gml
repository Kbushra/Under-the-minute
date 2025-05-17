for (var i = 0; i < 3; i++)
{
	var hand = instance_create_layer(x, y, layer, objDecoHand);
	hand.image_index = i;
	hand.image_xscale = image_xscale;
	hand.image_yscale = image_yscale;
	hand.depth = depth - 1;
}