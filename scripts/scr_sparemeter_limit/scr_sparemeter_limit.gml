function scr_sparemeter_limit() {
	if (sparemeter < 0)
	    sparemeter = 0
	if (place_meeting(x, y, obj_enemy_spareable) && enemyhealth >= 2 && (!instance_exists(obj_dell_battle)))
	    enemyattack = 1



}
