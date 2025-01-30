/// @description Insert description here
// You can write your code in this editor

back = false;
flipped = false;
attacking = false;
charging = false;

key_up = (keyboard_check(ord("W")) || keyboard_check(vk_up));
key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
key_left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
key_right = (keyboard_check(ord("D")) || keyboard_check(vk_right));
key_dash = (keyboard_check(ord("O")) || keyboard_check(ord("Z")));
key_attack = (keyboard_check(ord("P")) || keyboard_check(ord("X")));
