function scr_item_frchick() {
	if (global.itemaction == 1)
	{
	    global.bleeding = 0
	    with (obj_battle_bleeding)
	        instance_destroy()
	    audio_play_sound(snd_activate_save, 1, false)
	    if (global.playerhealth > (global.fullhealth - 35))
	        global.playerhealth = global.fullhealth
	    else
	        global.playerhealth += 35
	    script_execute(scr_item_remove)
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* You eat the fried chicken.#* Tastes...feathery.#* 35 HP restored."
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
	            STR[0] = "* " + "\"" + "FrChick" + "\"" + " - Restores 35 HP.#* A chicken that fell#  into the fryer."
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
	            STR[0] = "* You put the chicken on#  the ground. It clucks#  and runs away swiftly."
	        }
	    }
	}
	script_execute(scr_menuback)



}
