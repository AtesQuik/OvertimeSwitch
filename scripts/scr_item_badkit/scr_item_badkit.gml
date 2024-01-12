function scr_item_badkit() {
	if (global.itemaction == 1)
	{
	    global.bleeding = 0
	    with (obj_battle_bleeding)
	        instance_destroy()
	    global.itemaction = 0
	    audio_play_sound(snd_activate_save, 1, false)
	    if (global.playerhealth > (global.fullhealth - 15))
	        global.playerhealth = global.fullhealth
	    else
	        global.playerhealth += 15
	    script_execute(scr_item_remove)
	    if (!instance_exists(obj_textbox_item))
	    {
	        instance_create(x, y, obj_textbox_item)
	        with (obj_textbox_item)
	        {
	            MAXSTR = 0
	            STR[0] = (choose("* Lots of people can't afford#  medical care, you know.", "* About 1 person dies for#  every 5 Badkits made.", "* These cost 125 times more#  than they cost to produce.", "* This one was stolen from a#  dying man and then resold.") + "#* 15 HP restored.")
	        }
	    }
	}
	if (global.itemaction == 2)
	{
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        instance_create(x, y, obj_textbox_item)
	        with (obj_textbox_item)
	        {
	            MAXSTR = 0
	            STR[0] = "* " + "\"" + "Badkit" + "\"" + " - Restores 15 HP.#* Tells you harsh truths#  once used."
	        }
	    }
	}
	if (global.itemaction == 3)
	{
	    global.itemaction = 0
	    script_execute(scr_item_remove)
	    if (global.playerhealth > 1)
	        global.playerhealth -= 1
	    if (!instance_exists(obj_textbox_item))
	    {
	        instance_create(x, y, obj_textbox_item)
	        with (obj_textbox_item)
	        {
	            MAXSTR = 0
	            STR[0] = "* Before you throw the Badkit#  away, you cut yourself#  on it. How clumsy."
	        }
	    }
	}
	script_execute(scr_menuback)



}
