#region Movement
//Player input scripts
scr_player_inputs();

var _move = key_right - key_left;
hsp = _move * move_speed;
vsp = vsp + grv;


if(place_meeting(x,y+1,obj_floor_full)) && (key_jump){
	vsp = -jump_height;
	jump = true;
	if(attackDone)
		sprite_index = spr_player_jump;
} else if(vsp > 0) {
	jump = false;
}
#endregion
#region Collision
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
	vsp = 0;
}
y = y + vsp;
#endregion
#region Animations
if (hsp != 0) image_xscale = (-sign(hsp));
if(attackDone and !jump)
	sprite_index = (hsp != 0) ? spr_player_running : spr_player;
else if (attackDone and jump)
	sprite_index = spr_player_jump;

if (attack_1 and canAttack and attackDone) {
	event_user(0);
	sprite_index = spr_player_attack_up;
	event_user(1);
} else if (attack_2 and canAttack and attackDone) {
	event_user(0);
	sprite_index = spr_player_attack_fwd;
	event_user(1);
}
#endregion