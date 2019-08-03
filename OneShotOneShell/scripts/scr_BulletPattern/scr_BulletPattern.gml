switch reloadSteps
	{
		
		case 1:
		case 2:
		case 3:
		currentDirection = instance_create_layer(x-10, y-100, "Instances", obj_A)
		currentDirection.steps = 2;
		
		show_debug_message("A CREATED");
		break;
	
	}