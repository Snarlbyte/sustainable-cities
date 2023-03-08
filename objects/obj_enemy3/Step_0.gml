/// @description Ready and shoot
if (instance_exists(obj_player) and distance_to_object(obj_player) < attack_range) {
	// Ready Timer
	image_index = 1;
	if(!ready and alarm[3] <= 0)
		alarm[3] = 20;
	if(ready){
		// Ready and fire
		image_index = 2;
		if instance_exists(obj_player)
			image_xscale = (obj_player.x > x) ? -1 : 1;
			if(canAttack){
				instance_create_layer(x,y,"Instances", obj_enemybullet);
				canAttack = false;
				// Fire Rate
				alarm[0] = attackSpeed;
			}
	}
} else {
	// Go back to normal
	if(ready and alarm[3] <= 0)
		alarm[3] = 60;
		image_index = 0;
}