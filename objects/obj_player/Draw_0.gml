/// @description Draw
// You can write your code in this editor
draw_self();
if(immune) {
	shader_set(shdr_immune);
	draw_self();
	shader_reset();
} else {
	shader_reset();
	draw_self();
}