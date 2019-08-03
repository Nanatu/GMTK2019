image_angle = point_direction(x,y,mouse_x,mouse_y);
if (mouse_check_button_pressed(mb_left))
{
		with instance_create_layer(x, y, "Instances", obj_Bullet)
		{
			image_angle = point_direction(x,y,mouse_x,mouse_y);
			speed = 10;
			direction = point_direction(x,y,mouse_x,mouse_y);
		}
}