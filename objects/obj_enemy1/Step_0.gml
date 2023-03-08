/// @description Move and knockback
// You can write your code in this editor
if(!tempknock){
	if (instance_exists(obj_player) and distance_to_object(obj_player) < attack_range) {
		speed = extraSpeed;
		if (knockback){
			direction = point_direction(obj_player.x,obj_player.y,x,y)
			speed = speed + 1
		} else if (!(knockback) and canAttack) {
			direction = point_direction(x,y,obj_player.x,obj_player.y)
			speed = extraSpeed
		} else {
			direction = point_direction(x,y,obj_player.x,obj_player.y)
			speed = 0
		}
	}
}

if instance_exists(obj_player)
	image_xscale = (obj_player.x > x) ? -1 : 1;