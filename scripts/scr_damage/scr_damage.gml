// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage(target){
	if !(target.immune){
		if target.object_index = obj_player {
			health -= self.damage
			self.alarm[1] = self.knockbackTime
			self.knockback = true;
			self.alarm[0] = self.attackSpeed;
		} else { 
			audio_play_sound(snd_hit,1,false);
			target.hp -= obj_player.damage
		}
		target.alarm[2] = target.immuneTime;
		target.immune = true;
	}
	if target.object_index = obj_player{
		if health <= 0 then instance_destroy(obj_player);
	} else if target.hp <= 0 then instance_destroy(target);
}