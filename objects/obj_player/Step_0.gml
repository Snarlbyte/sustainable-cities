key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var _move = key_right - key_left;
hsp = _move * move_speed;
vsp = vsp + grv;


if(place_meeting(x,y+1,obj_floor)) && (key_jump){
	vsp = -jump_height;
}

// Horizontal Collision
if (place_meeting(x+hsp, y, obj_floor)){
	while (!place_meeting(x+sign(hsp),y,obj_floor)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_floor)){
	while (!place_meeting(x,y+sign(vsp),obj_floor)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Animations
if (hsp != 0) image_xscale = (-sign(hsp));
if (sprite_index != spr_player_attack_up){
	sprite_index = (hsp != 0) ? spr_player_running : spr_player;
}
if (keyboard_check_pressed(ord("Z")) and canAttack) {
	sprite_index = spr_player_attack_up;
	immune = true;
}