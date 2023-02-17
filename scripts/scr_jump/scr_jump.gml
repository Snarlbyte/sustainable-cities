// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_jump(){
	jump_height = 65;
	jump_time_to_peak = 0.4;
	jump_time_to_descent = 0.35;
	jump_force = ((2*jump_height)/jump_time_to_peak) * -1.0;
	jump_gravity = ((-2*jump_height)/(jump_time_to_peak*jump_time_to_peak)) * -1;
	fall_gravity = ((-2 * jump_height) / (jump_time_to_descent * jump_time_to_descent)) * -1;
}