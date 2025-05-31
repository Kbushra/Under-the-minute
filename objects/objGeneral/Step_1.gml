if room == rmInit { room_goto(rmMenu); }
show_debug_message(room);

var newX = lerp(camera_get_view_x(view_camera[0]), objPlayer.x - 391.5, 0.2);
var clampX = clamp(newX, 0, room_width - 683);

var newY = lerp(camera_get_view_y(view_camera[0]), objPlayer.y - 192, 0.2);
var clampY = clamp(newY, 0, room_height - 384);

camera_set_view_pos(view_camera[0], clampX, clampY);