if !global.controls { exit; }

global.right = keyboard_check(ord("D")) || keyboard_check(vk_right);
global.left = keyboard_check(ord("A")) || keyboard_check(vk_left);
global.up = keyboard_check(ord("W")) || keyboard_check(vk_up);
global.down = keyboard_check(ord("S")) || keyboard_check(vk_down);

if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

global.time++;