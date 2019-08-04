if hp <= 0
{
	global.killCounter++;
instance_destroy();	
}

//Gravity
	if (vsp < 10)
	{
		vsp = vsp + grv;
	}

//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_Wall))
	{
		
//Get as close to wall as possible horizonatally
		while (!place_meeting(x+sign(hsp),y,obj_Wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	
//Check if moving horizontally, running	
	if (hsp != 0)
	{
	verb = "Running";	
	}
	
//Move actual
	x = x + hsp;

//Vertical Collision
	if (place_meeting(x,y+vsp,obj_Wall))
	{
		
//Get as close to wall as possible vertically
		while ((!place_meeting(x,y+sign(vsp),obj_Wall)))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
		
	}

//Vertical actual
	y = y + vsp;