if global.act == act { instance_destroy(); exit; }

ini_open("Under-Minute");

ini_write_real("Location", "Spawn X", objPlayer.x);
ini_write_real("Location", "Spawn Y", objPlayer.y);
ini_write_real("Location", "Spawn Room", room);
ini_write_string("Location", "Spawn Name", act);

for (var i = 0; i < global.flagNum; i++) { ini_write_real("Flags", $"Flag {i+1}", global.flag[i]); }

ini_close();

alpha = 1;