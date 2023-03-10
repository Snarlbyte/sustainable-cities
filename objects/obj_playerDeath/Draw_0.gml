draw_set_font(Menu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

var new_w = 0;
for (var i = 0; i < d_length; i++)
{
	var op_w = string_width(death[i]);
	new_w = max(new_w, op_w);
}

width = new_w + margin*2
height = margin*2 + string_height(death[0]) + (d_length-1)*space;
x = camera_get_view_x(view_camera[0]) + 760;
y = camera_get_view_y(view_camera[0]) + 340;

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width,height/sprite_height, 0, c_white, 1);

for (var i = 0; i < d_length; i++)
{
	var c = c_white;
	if pos == i 
		{ 
			c = c_yellow;
		}
		draw_text_color(x+sprite_width/2, y+margin + space*(i), death[i], c, c, c, c, 1);
}
