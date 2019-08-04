walkerTimer--;
if (walkerTimer <= 0)
{
instance_create_layer(x-70,y-100,"Instances",obj_Walker);
walkerTimer = 60 + random_range(-30,60);
}