menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

select = keyboard_check_pressed(vk_enter);

menuIndex += menuMove;

if (menuIndex < 0) menuIndex = buttons - 1;

if (menuIndex > buttons - 1) menuIndex = 0;

lastSelected = menuIndex;


if (select)
{
	switch (menuIndex)
	{
		case 0:
			room_goto(rm_Game)
			break;
		case 1:
			//Credits
			break;
		case 2:
			game_end();
			break;
		
		
	}
}