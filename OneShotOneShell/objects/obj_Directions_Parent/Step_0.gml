if keyboard_check_pressed(ord(keyType))
{
	//obj_GunArm.bullet = true;
	obj_GunArm.reloadSteps = obj_GunArm.reloadSteps - 1;
	obj_GunArm.currentDirection = noone;
	instance_destroy();
}