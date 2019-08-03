

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
		currentDirection = instance_create_layer(x-10, y-100, "Instances", obj_W);
}

if currentDirection == noone
{	
	switch reloadSteps
	{
		case 3:
		currentDirection =instance_create_layer(x-10, y-100, "Instances", obj_A)
		show_debug_message("A CREATED");
		break;
	
		case 2:
		currentDirection =instance_create_layer(x-10, y-100, "Instances", obj_S)
		show_debug_message("S CREATED");
		break;
	
		case 1:
		currentDirection =instance_create_layer(x-10, y-100, "Instances", obj_D)
		show_debug_message("D CREATED");
		break;
	}
}

if reloadSteps == 0
{
	bullet = true;	
}