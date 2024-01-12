function scr_enemy_acting() {
	if keyboard_check_pressed(global.cancelkey)
	{
	    with (obj_act_enemy_select)
	        instance_destroy()
	    if instance_exists(obj_text_box_battle)
	    {
	        with (obj_text_box_battle)
	            instance_destroy()
	    }
	    global.battlemenuoffline = 0
	}
	if keyboard_check_pressed(global.downkey)
	{
	    if (soul_ypos < 2)
	        soul_ypos += 1
	}
	if keyboard_check_pressed(global.upkey)
	{
	    if (soul_ypos > 1)
	        soul_ypos -= 1
	}
	if keyboard_check_pressed(global.rightkey)
	{
	    if (soul_topxpos < 1)
	        soul_topxpos += 1
	}
	if keyboard_check_pressed(global.leftkey)
	{
	    if (soul_topxpos > 0)
	        soul_topxpos -= 1
	}
	if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
	{
	    audio_play_sound(snd_battlemenu_select, 1, false)
	    if (global.isacting == 0)
	    {
	        global.battlemenuoffline = 1
	        instance_create(x, y, obj_youact)
	        if (soul_ypos == 1 && soul_topxpos == 0)
	            global.actchoice = 0
	        if (soul_ypos == 1 && soul_topxpos == 1)
	            global.actchoice = 1
	        if (soul_ypos == 2 && soul_topxpos == 0)
	            global.actchoice = 2
	        if (soul_ypos == 2 && soul_topxpos == 1)
	            global.actchoice = 3
	        global.isacting = 1
	        instance_destroy()
	    }
	}



}
