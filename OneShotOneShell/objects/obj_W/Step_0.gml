if keyboard_check_pressed(ord(keyType))
{
	
	if (obj_GunArm.roundChoice == noone)
	{
		obj_GunArm.roundChoice = rounds.BULLET;
	}
	obj_GunArm.reloadSteps = obj_GunArm.reloadSteps - steps;
	obj_GunArm.currentDirection = noone
	instance_destroy();
}

