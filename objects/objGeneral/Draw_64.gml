if room == rmIntro { exit; }

if !instance_exists(objCPU)
{ draw_sprite_ext(sprWhite, 0, 0, 0, display_get_gui_width(), display_get_gui_height(), 0, c_black, 0.5); }