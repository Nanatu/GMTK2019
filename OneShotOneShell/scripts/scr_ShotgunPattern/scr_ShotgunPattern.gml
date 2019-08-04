switch reloadSteps
	{
		
		case 4:
		currentDirection = instance_create_layer(x-30, y-100, "Instances", obj_W)
		show_debug_message("D CREATED");
		break;
		
		case 3:
		currentDirection = instance_create_layer(x-30, y-100, "Instances", obj_A)
		show_debug_message("A CREATED");
		break;
	
		case 2:
		currentDirection = instance_create_layer(x-30, y-100, "Instances", obj_S)
		show_debug_message("S CREATED");
		break;
	
		case 1:
		currentDirection = instance_create_layer(x-30, y-100, "Instances", obj_D)
		show_debug_message("D CREATED");
		break;
	}