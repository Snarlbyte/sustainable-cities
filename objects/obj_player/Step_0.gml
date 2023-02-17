/// @description Move
// You can write your code in this editor
jump_force = ((2*jump_height)/jump_time_to_peak) * -1.0;
jump_gravity = ((-2*jump_height)/(jump_time_to_peak*jump_time_to_peak)) * -1;
fall_gravity = ((-2 * jump_height) / (jump_time_to_descent * jump_time_to_descent)) * -1;
if keyboard_check(vk_left) && place_free(x-space_ahead,y){
	x -= spd
}

if keyboard_check(vk_right) && place_free(x+space_ahead,y){
	x += spd
}

if keyboard_check_pressed(vk_up) && !place_free(x,y+space_ahead){
	vspeed = jump_force;
}

if place_free(x,y+space_ahead){
	gravity = 1;
} else {
	gravity = 0;
}