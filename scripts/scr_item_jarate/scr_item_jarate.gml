function scr_item_jarate() {
	if (global.itemaction == 1)
	{
	    global.itemaction = 0
	    if instance_exists(obj_spy_battle)
	    {
	        if (obj_spy_battle.invisible == 1)
	        {
	            audio_play_sound(snd_glass_break, 1, false)
	            script_execute(scr_item_remove)
	            obj_spy_battle.jarated = 1
	            if (!instance_exists(obj_textbox_item))
	            {
	                with (instance_create(x, y, obj_textbox_item))
	                {
	                    MAXSTR = 0
	                    STR[0] = "* Spy was covered in a#  mysterious yellow liquid#  and is slightly visible."
	                }
	            }
	        }
	        else if (!instance_exists(obj_textbox_item))
	        {
	            with (instance_create(x, y, obj_textbox_item))
	            {
	                MAXSTR = 0
	                STR[0] = "* You want to use the Jarate,#  but since Spy is clearly#  visible, it'd be pointless."
	            }
	        }
	    }
	    else if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* You bring out the Jarate.#* Everyone is very disgusted,#  but it does nothing."
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
	            STR[0] = "* " + "\"" + "Jarate." + "\"" + " - Yellow liquid.#* Both of us know that#  it is not lemonade."
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
	            STR[0] = "* You throw the Jarate on#  the floor. Some of it#  splatters on your face."
	        }
	    }
	}
	script_execute(scr_menuback)



}
