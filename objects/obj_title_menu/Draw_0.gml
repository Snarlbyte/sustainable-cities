//set and allign font
draw_set_font(Menu)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

//get height and width for main
if !(credit)
{
	var new_w = 0;
	for (var i = 0; i < op_length; i++)
	{
		var op_w = string_width(options[i]);
		new_w = max(new_w, op_w);
	}

	width = new_w + margin*2
	height = margin*2 + string_height(options[0]) + (op_length-1)*space;
	x= 760;
	y= 340;
}

//get height and width for credit
if credit
{
	var new_w = 0;
	for (var i = 0; i < cr_length; i++)
	{
		var op_w = string_width(credits[i]);
		new_w = max(new_w, op_w);
	}

	width = new_w + margin*2
	height = margin*2 + string_height(options[0]) + (cr_length+1)*space;
	x = 0 + sprite_xoffset+ margin;
	y = 0 + sprite_yoffset + margin;
}

//draw menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width,height/sprite_height, 0, c_white, 1);


//draw font and options for main menu
if !(credit)
{
	for (var i = 0; i < op_length; i++)
	{
		var c = c_white;
		if pos == i 
			{ 
				c = c_yellow;
			}
		draw_text_color(x+margin, y+margin + space*i, options[i], c, c, c, c, 1);
	}
}
if (credit)
{
	draw_text(x+width/2, y+margin,"CREDITS");
	for( var i = 0; i < cr_length; i++)
	{
		var c = c_white;
		draw_text_color(x+margin, y+margin + space*(i+1), credits[i], c, c, c, c, 1);
	}
	draw_text_color(x+width/2, y+margin+ space*(cr_length+1),"Back", c_yellow, c_yellow, c_yellow, c_yellow, 1);
}