function scr_soul_bleeding() {
	global.battleapproachstring = "* Blood is pouring through#  your open wounds."
	global.bleeding = 1
	if (!instance_exists(obj_battle_bleeding))
	    instance_create(0, 0, obj_battle_bleeding)
	if instance_exists(obj_battle_bleeding)
	{
	    with (obj_battle_bleeding)
	        countup = 0
	}



}
