function scr_item_cobread() {
	if (global.itemaction == 1)
	{
	    global.bleeding = 0
	    with (obj_battle_bleeding)
	        instance_destroy()
	    audio_play_sound(snd_activate_save, 1, false)
	    if (global.playerhealth > (global.fullhealth - 28))
	        global.playerhealth = global.fullhealth
	    else
	        global.playerhealth += 28
	    script_execute(scr_item_remove)
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* Upon eating the cornbread,#  it restores 28 HP.#* Corn you believe it?"
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
	            STR[0] = "* " + "\"" + "CoBread" + "\"" + " - Restores 28 HP.#* Very corny bread.#* How a-maize-ing!"
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
	            STR[0] = "* Seems like the cornbread#  was too corny for you.#* Corngratulations."
	        }
	    }
	}
	script_execute(scr_menuback)



}
