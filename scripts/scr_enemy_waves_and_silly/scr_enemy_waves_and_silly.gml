function scr_enemy_waves_and_silly() {
	if (place_meeting(x, y, obj_actwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
	{
	    with (instance_position(x, y, obj_actwave))
	        instance_destroy()
	    alarm[5] = 1
	}
	if (place_meeting(x, y, obj_fightwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
	{
	    with (instance_position(x, y, obj_fightwave))
	        instance_destroy()
	    alarm[5] = 30
	}
	if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
	{
	    with (instance_position(x, y, obj_sparewave))
	        instance_destroy()
	    alarm[5] = 1
	}
	if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
	{
	    with (instance_position(x, y, obj_itemwave))
	        instance_destroy()
	    alarm[5] = 1
	}
	if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
	{
	    with (instance_position(x, y, obj_fleewave))
	        instance_destroy()
	    alarm[5] = 1
	}



}
