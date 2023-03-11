/// @description Move and knockback
// You can write your code in this editor
vsp = vsp + grv;

if (instance_exists(obj_player) and distance_to_object(obj_player) < attack_range) {
	if(alarm[3] <= 0 and !jumping and !jump)
		alarm[3] = jump_time;
	if(!jumping and !jump)
		image_index = 1;
} else {
	if(!jumping and !jump)
		image_index = 0;
}

if(place_meeting(x, y+sign(vsp), obj_floor_full) and jump){
	jump = false;
	jumping = true;
	audio_play_sound(snd_spring,2,false);
	vsp = -jump_height;
} else if(jumping){
	if(vsp < 0){
		image_index = 2	
	}
	else if(1 > vsp >= -1.5){
		image_index = 3
		image_index = (vsp > 6) ? 2 : 3;
	}
	
	grv = 0.3;
	if(instance_exists(obj_player))
		hsp = (obj_player.x > x) ? extraSpeed : -extraSpeed;
} else {
	hsp = 0;
}

// Horizontal Collision
if (place_meeting(x+hsp, y, obj_floor_full)){
	while (!place_meeting(x+sign(hsp),y,obj_floor_full)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_floor_full)){
	while (!place_meeting(x,y+sign(vsp),obj_floor_full)){
		y = y + sign(vsp);
	}
	jumping = false;
	vsp = 0;
}
y = y + vsp;

if instance_exists(obj_player)
	image_xscale = (obj_player.x > x) ? 1 : -1;