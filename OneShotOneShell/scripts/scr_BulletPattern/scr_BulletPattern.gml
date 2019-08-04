switch reloadSteps
	{
		
		case 3:
		currentDirection = instance_create_layer(x-30, y-100, "Instances", obj_A)
		currentDirection.steps = 3;
		break;
		
		case 4:
		currentDirection = instance_create_layer(x-30, y-100, "Instances", obj_W)
		currentDirection.steps = 1;
		break;
	
	}