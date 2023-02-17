
if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_floor)) {
	x += -move_speed
	image_xscale = 1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_floor)) {
	x += move_speed
	image_xscale = -1
}

if (keyboard_check(vk_up)) {
	show_debug_message("jumping...")
	if (instance_place(x, y+1, obj_floor)) {
		vspeed = jump_height
	}
}

if (instance_place(x, y+1, obj_floor)){
	gravity = 0
} else {
	gravity = 0.25;
}
vspeed = min(vspeed,12)
if (keyboard_check_pressed(ord("Z"))) {
	instance_create_layer(x, y, "Instances", obj_staff);
}