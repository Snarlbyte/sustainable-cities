/// @description Insert description here
// You can write your code in this editor
var Collide = collision_rectangle(x + x1, y + y1, x + x2, y + y2, obj_enemy1, 0,0);
if(Collide != noone){
	scr_damage(Collide);
}