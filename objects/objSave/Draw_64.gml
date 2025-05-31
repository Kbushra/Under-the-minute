draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var scale = os_browser == browser_not_a_browser ? 1 : 2;

draw_text_transformed_color(display_get_gui_width()/2, display_get_gui_height()/2, "Saving...",
	scale, scale, 0, c_white, c_white, c_white, c_white, alpha);

draw_set_valign(fa_top);

alpha -= 0.02;
if alpha <= 0 { instance_destroy(); }