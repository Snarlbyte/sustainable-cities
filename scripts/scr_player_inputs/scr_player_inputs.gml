//	Player directional inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space);

//	Attack inputs
attack_1 = keyboard_check_pressed(ord("Z"));
attack_2 = keyboard_check_pressed(ord("X"));