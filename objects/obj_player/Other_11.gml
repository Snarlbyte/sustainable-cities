/// @description Hitbox Up
// You can write your code in this editor
if(sprite_index = spr_player_attack_fwd){
	if(image_xscale == -1){ hitBox_X = 0; hitBox_Y = 0; set_X1 = 0; set_X2 = 320; set_Y1 = -80; set_Y2 = 80}
	if(image_xscale == 1){ hitBox_X = 0; hitBox_Y = 0; set_X1 = 0; set_X2 = -320; set_Y1 = -80; set_Y2 = 80}
}
else if(sprite_index = spr_player_attack_up){
	hitBox_X = 0; hitBox_Y = 0; set_X1 = -180; set_X2 = 220; set_Y1 = 0; set_Y2 = -240}
	
var hitBox = instance_create_layer(x + hitBox_X, y + hitBox_Y, "Instances", obj_hitbox);
	hitBox.x1 = set_X1;
	hitBox.x2 = set_X2;
	hitBox.y1 = set_Y1;
	hitBox.y2 = set_Y2;