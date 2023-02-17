// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage(hurt){
	health -= hurt;
	self.canAttack = false;
	if health <= 0 then instance_destroy(obj_player);
}