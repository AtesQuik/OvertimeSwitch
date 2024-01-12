function scr_damage_numbers() {
	if (global.enemydamage == 0)
	    instance_create(x, 29, obj_miss)
	else
	{
	    if (global.enemydamage == global.minimaldamage)
	    {
	        instance_create(x, 16, obj_damage_numbers)
	        with (obj_damage_numbers)
	            image_index = 0
	    }
	    if (global.enemydamage == global.mediumdamage)
	    {
	        instance_create(x, 16, obj_damage_numbers)
	        with (obj_damage_numbers)
	            image_index = 1
	    }
	    if (global.enemydamage == global.normaldamage)
	    {
	        instance_create(x, 16, obj_damage_numbers)
	        with (obj_damage_numbers)
	            image_index = 2
	    }
	    if (global.enemydamage == global.maxdamage)
	    {
	        instance_create(x, 16, obj_damage_numbers)
	        with (obj_damage_numbers)
	            image_index = 3
	    }
	}



}
