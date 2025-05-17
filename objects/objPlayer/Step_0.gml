if !global.controls { exit; }

xMove = lerp(xMove, (global.right - global.left)*spd, 0.1);
yMove = lerp(yMove, (global.down - global.up)*spd, 0.1);

x += xMove;
y += yMove;

x = clamp(x, 8, room_width - 8);
y = clamp(y, 8, room_height - 8);