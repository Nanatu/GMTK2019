collideInst = instance_place(x, y, obj_EnemyParent);
		{
			if collideInst != noone
			{
		if(ds_list_find_index(damageList, collideInst.id) == -1)
		{
		 collideInst.hp = collideInst.hp - 5;
		 collideInst.flash = 3;
		 ds_list_add(damageList, collideInst.id);
		}
			}
		}
		
		if (ds_list_size(damageList) >= 3)
		{
		instance_destroy();	
		}