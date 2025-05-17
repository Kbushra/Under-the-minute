if !global.controls { exit; }

xMove = lerp(xMove, (global.right - global.left)*spd, 0.1);
yMove = lerp(yMove, (global.down - global.up)*spd, 0.1);

x += xMove;
y += yMove;

x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);