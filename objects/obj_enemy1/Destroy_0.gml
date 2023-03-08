/// @description Death
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_enemyDeath);
for(var i = random_range(1,score_amount); i > 0; i -= 1){
	var pickup = instance_create_layer(x,y,"Instances", choose(obj_pickup, obj_pickup2));
	pickup.direction = random_range(score_direction[0], score_direction[1]);
	pickup.speed = 1;
	pickup.bounce = 3;
}
