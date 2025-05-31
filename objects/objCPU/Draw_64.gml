if !active { exit; }

depth = objPlayer.depth + 1;

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_font(fntMain);

var scale = os_browser == browser_not_a_browser ? 1 : 2;

draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/12,
	string_copy(text[page], 0, pos), scale, scale, 0);

var icon = lines == 0 && page < 3 ? sprBootIcon : sprCPUIcon;
draw_sprite_ext(icon, 0, display_get_gui_width()/2, display_get_gui_height()/24, scale, scale, 0, c_white, 1);
