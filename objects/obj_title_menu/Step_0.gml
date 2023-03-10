
if(!credit)
{
	//inputs to move through menu
	up = keyboard_check_pressed(vk_up);
	down = keyboard_check_pressed(vk_down);
	entry = keyboard_check_pressed(ord("Z"));

	//menu up and down
	pos += down - up;
	if pos >= op_length 
	{
		pos = 0;
	}
	if pos < 0 
	{
		pos = op_length-1;
	}

	//switching through options
	if entry and drawtime
	{
		switch(pos)
		{
			//start game
			case 0:
				room_goto_next();
				break;
			//credits
			 case 1:
				credit = true;
				drawtime = false;
				alarm[0] = 15;
				break;
			//Quit Game
			case 2:
				game_end();
				break;
		}
	}
}
if credit and drawtime
{
	if keyboard_check_pressed(ord("Z"))
	{
		credit = false;
		drawtime = false
		alarm[0] = 15
	}
}
