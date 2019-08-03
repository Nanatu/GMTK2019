

image_angle = point_direction(x,y,mouse_x,mouse_y);
if (mouse_check_button_pressed(mb_left) && bullet)
{
		with instance_create_layer(x, y, "Instances", obj_Bullet)
		{
			image_angle = point_direction(x,y,mouse_x,mouse_y);
			speed = 15;
			direction = point_direction(x,y,mouse_x,mouse_y);
			other.bullet = false;
		}
		reloadSteps = 4;
		
		currentDirection = instance_create_layer(x-10, y-100, "Instances", obj_W)
		currentDirection.steps = 2;
}

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