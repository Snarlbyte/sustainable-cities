/// @description Reset
// You can write your code in this editor
if(sprite_index = spr_player_attack_up and !attackDone){
	immune = false
	attackDone = true;
} else if(sprite_index = spr_player_attack_fwd and !attackDone){
	immune = false
	attackDone = true;
}