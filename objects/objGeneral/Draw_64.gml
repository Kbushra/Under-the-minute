if room == rmInit { room_goto(rmHub); }
if room == rmIntro { exit; }

draw_sprite_ext(sprWhite, 0, 0, 0, window_get_width(), window_get_height(), 0, c_black, 0.5);