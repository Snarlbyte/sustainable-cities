/// @description Insert description here
// You can write your code in this editor
if object_exists(obj_player) {
	if(collision_line(x,y,obj_player.x,obj_player.y,obj_floor,true,true) = noone) {
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		speed = extraSpeed;
	}
}

if direction > 180 {
	image_xscale = -1
} else {
	image_xscale = 1
}