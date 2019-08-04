
image_angle = point_direction(x,y,mouse_x,mouse_y);
direction = point_direction(x,y,mouse_x,mouse_y);
if (mouse_check_button(mb_left) && bullet)
{
	
	if roundChoice = rounds.BULLET
	{
		with instance_create_layer(x, y, "Front", obj_Bullet)
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
			with (instance_create_layer(x,y,"Front",obj_Shotgun))
			{
				image_angle = other.image_angle;
				speed = 30 + random_range(-5,5);
				direction = other.direction + random_range(-8,8);
			}
		}
	}
	
		bullet = false;
		roundChoice = noone;
		reloadSteps = 4;
		instance_create_layer(x+10,y-100,"Front",obj_SelectShotgun);
		instance_create_layer(x-70,y-100,"Front",obj_SelectBullet);
	
}

if (currentDirection == noone)
{
	
	if keyboard_check_pressed(ord("W")) && roundChoice == noone
	{
	roundChoice = rounds.BULLET;
	instance_destroy(obj_SelectBullet);
	instance_destroy(obj_SelectShotgun);
	}
	
	if keyboard_check_pressed(ord("S")) && roundChoice == noone
	{
	roundChoice = rounds.SHOTGUN;
	instance_destroy(obj_SelectBullet);
	instance_destroy(obj_SelectShotgun);
	}
	
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