function scr_item_hotdog() {
	if (global.itemaction == 1)
	{
	    global.bleeding = 0
	    with (obj_battle_bleeding)
	        instance_destroy()
	    audio_play_sound(snd_activate_save, 1, false)
	    if (global.playerhealth > (global.fullhealth - 30))
	        global.playerhealth = global.fullhealth
	    else
	        global.playerhealth += 30
	    script_execute(scr_item_remove)
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* You eat the Hot Dog.#* It tastes hot and doggy.#* 30 HP restored."
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
	            STR[0] = "* " + "\"" + "Hot Dog" + "\"" + " - Restores 30 HP.#* It is shaped like a little#  Dispenser of love."
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
	            STR[0] = "* Before you throw the Hot#  Dog away, it gives you a#  small kiss on the cheek."
	        }
	    }
	}
	script_execute(scr_menuback)



}
