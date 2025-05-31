draw_set_font(fntMain);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var scale = os_browser == browser_not_a_browser ? 1 : 2;

draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2,
	$"{global.act}\nENTER to start/continue\nESC to restart", scale, scale, 0,
		c_black, c_black, c_black, c_black, 1);

draw_set_valign(fa_top);