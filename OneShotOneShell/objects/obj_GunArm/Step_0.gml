

image_angle = point_direction(x,y,mouse_x,mouse_y);
direction = point_direction(x,y,mouse_x,mouse_y);
if (mouse_check_button_pressed(mb_left) && bullet)
{
	if roundChoice = rounds.BULLET
	{
		with instance_create_layer(x, y, "Instances", obj_Bullet)
		{
			image_angle = other.image_angle;
			speed = 15;
			direction = other.direction;
		}
	}
	
	if roundChoice = rounds.SHOTGUN
	{
		for (i = 10; i > 0; i--)
		{
			with (instance_create_layer(x,y,"Instances",obj_Shotgun))
			{
				image_angle = other.image_angle;
				speed = 30 + random_range(-5,5);
				direction = other.direction + random_range(-5,5);
			}
		}
	}
		//bullet = false;
		//roundChoice = noone;
		//reloadSteps = 4;
}






//if (currentDirection == noone && roundChoice == noone)
//{
//	instance_create_layer(x-10, y-100, "Instances", obj_W)
//	
//	instance_create_layer(x-60, y-100, "Instances", obj_S)
//}

if (currentDirection == noone)
{
	switch roundChoice
	{
	case rounds.BULLET:
		scr_BulletPattern();
		break;
	
	case rounds.SHOTGUN:
		scr_ShotgunPattern();
		break;
	}
}


if (reloadSteps <= 0)
{
	bullet = true;	
}