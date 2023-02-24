/// @description Death
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_enemyDeath);
for(var i = random(2); i > 0; i -= 1){
	var pickup = instance_create_layer(x,y,"Instances", obj_pickup);
	pickup.direction = random_range(225,315);
	pickup.speed = 1;
	pickup.bounce = 3;
}
