//inputs to move through menu
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
entry = keyboard_check_pressed(ord("Z"));

//menu up and down
clamp(pos,1,2);
pos += down - up;
if pos >= d_length 
{
	pos = 1;
}
if pos < 1 
{
	pos = d_length-1;
}

//switching through options
if entry
{
	switch(pos)
	{
		case 1:
			health = 100;
			game_restart();
			break;
		case 2:
			game_end();
	}
}