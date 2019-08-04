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

walkerTimer = 90 + random_range(-15,60);
}

if flyerTimer <= 0
{
for (i = 3; i > 0; i--)
		{
		instance_create_layer(x,y - random_range(100,300),"Instances",obj_Flyer);
		}
		flyerTimer = 120 + random_range(-15,60);
}