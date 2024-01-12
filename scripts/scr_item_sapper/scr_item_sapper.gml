function scr_item_sapper() {
	if (global.itemaction == 1)
	{
	    global.itemaction = 0
	    if instance_exists(obj_dispenser_battle)
	    {
	        script_execute(scr_item_remove)
	        global.removedsapper = 1
	        with (obj_dispenser_battle)
	        {
	            sparemeter = 0
	            sapped = 1
	        }
	        if (!instance_exists(obj_textbox_item))
	        {
	            with (instance_create(x, y, obj_textbox_item))
	            {
	                MAXSTR = 0
	                STR[0] = "* You put the Sapper on#  Dispenser. You hear loud#  buzzing..."
	            }
	        }
	    }
	    else if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* You bring out the Sapper.#* Your phone makes a noise,#  but nothing else happens."
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
	            STR[0] = "* " + "\"" + "Sapper." + "\"" + " - Sapper.#* Deactivates electronics,#  causing them to break."
	        }
	    }
	}
	if (global.itemaction == 3)
	{
	    script_execute(scr_item_remove)
	    global.removedsapper = 1
	    global.itemaction = 0
	    if (!instance_exists(obj_textbox_item))
	    {
	        instance_create(x, y, obj_textbox_item)
	        with (obj_textbox_item)
	        {
	            MAXSTR = 0
	            STR[0] = "* You drop the Sapper on the#  floor, destroying it.#* What a sap!"
	        }
	    }
	}
	script_execute(scr_menuback)



}
