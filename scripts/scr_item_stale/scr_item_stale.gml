function scr_item_stale() {
	if (global.itemaction == 1)
	{
	    global.bleeding = 0
	    with (obj_battle_bleeding)
	        instance_destroy()
	    audio_play_sound(snd_activate_save, 1, false)
	    if (global.playerhealth > (global.fullhealth - 18))
	        global.playerhealth = global.fullhealth
	    else
	        global.playerhealth += 18
	    script_execute(scr_item_remove)
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* You don't quail, drink the#  ale, and now you are a lot#  less pale! 18 HP restored."
	        }
	    }
	}
	if (global.itemaction == 2)
	{
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* " + "\"" + "St.Ale" + "\"" + " - Restores 18 HP.#* Ale, sent via snail mail,#  got stale before the sale."
	        }
	    }
	}
	if (global.itemaction == 3)
	{
	    script_execute(scr_item_remove)
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        instance_create(x, y, obj_textbox_item)
	        with (obj_textbox_item)
	        {
	            MAXSTR = 0
	            STR[0] = "* Due to its fail and with#  no wail, you pour it all#  out, leaving a trail."
	        }
	    }
	}
	script_execute(scr_menuback)



}
