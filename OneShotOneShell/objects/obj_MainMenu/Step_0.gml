menuMove = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
{
select = true;	
}
else
{
select = false;	
}

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
			game_end();
			break;
		
	}
}