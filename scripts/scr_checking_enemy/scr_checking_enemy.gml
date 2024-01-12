function scr_checking_enemy() {
	global.currentname = enemyname
	global.currentattack = enemyattack
	global.currentdefense = enemyhealth
	global.currentquip = enemyquip
	global.currentinfo = enemyinfo
	if (!instance_exists(obj_text_box_battle))
	{
	    if (!instance_exists(obj_hurts_battle))
	    {
	        with (instance_create(0, 0, obj_text_box_battle))
	        {
	            MAXSTR = 0
	            STR[0] = ((((((((("* " + string(global.currentname)) + " - DMG ") + string(global.currentattack)) + " HP ") + string(global.currentdefense)) + "#* ") + string(global.currentquip)) + "#* ") + string(global.currentinfo))
	        }
	    }
	    else
	    {
	        with (instance_create(0, 0, obj_text_box_battle))
	        {
	            MAXSTR = 0
	            STR[0] = "* it hurts"
	        }
	    }
	}



}
