if room == rm_Game
{
	

walkerTimer--;
flyerTimer--;
if (walkerTimer <= 0)
{
	if (random_range(1,10) < 9)
	{
	instance_create_layer(x-70,y-100,"Instances",obj_Walker);
	}
	else
	{
		instance_create_layer(x-70,y-100,"Instances",obj_WalkerBig);
	}

walkerTimer = 90 + random_range(-10,70);
}

if flyerTimer <= 0
{
for (flyerRandom = random_range(1,3); flyerRandom > 0; flyerRandom--)
		{
		instance_create_layer(x,y - random_range(100,300),"Instances",obj_Flyer);
		}
		flyerTimer = 130 + random_range(-20,60);
}

}