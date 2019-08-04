var ex, ey;

if hp <= 0
{
instance_destroy();	
}

if (instance_exists(obj_ReloadBench))
		{
			ex = instance_nearest(x, y, obj_ReloadBench).x;
			ey = instance_nearest(x, y, obj_ReloadBench).y;
		}
		
		if (direction != point_direction(x, y, ex, ey))
			{
				var newDir = point_direction(x, y, ex, ey);
				var diff = angle_difference(direction, newDir);
				direction -= min(6*sign(diff), abs(diff));
				image_angle -= min(6*sign(diff), abs(diff));
			}
			
			speed = 1;
			