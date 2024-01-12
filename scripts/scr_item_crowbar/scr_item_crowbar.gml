function scr_item_crowbar() {
	if (global.itemaction == 1)
	{
	    global.itemaction = 0
	    if instance_exists(obj_physician_battle)
	    {
	        if (obj_physician_battle.crowbar == 0)
	        {
	            with (obj_physician_battle)
	            {
	                sparemeter = 0
	                crowbar = 1
	            }
	            if (!instance_exists(obj_textbox_item))
	            {
	                with (instance_create(x, y, obj_textbox_item))
	                {
	                    MAXSTR = 0
	                    STR[0] = "* You bring out the broken#  Crow/bar. Physical#  Physician recognizes it!"
	                }
	            }
	        }
	        else if (!instance_exists(obj_textbox_item))
	        {
	            with (instance_create(x, y, obj_textbox_item))
	            {
	                MAXSTR = 0
	                STR[0] = "* You take out the Crow/bar,#  but nothing happens."
	            }
	        }
	    }
	    else if (!instance_exists(obj_textbox_item))
	    {
	        with (instance_create(x, y, obj_textbox_item))
	        {
	            MAXSTR = 0
	            STR[0] = "* You glue the Crow/bar back#  together...but it snaps#  apart again."
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
	            STR[0] = "* " + "\"" + "Crow/bar" + "\"" + " - Broken item.#* It had a nice life before#  it snapped in two halves."
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
	            MAXSTR = 1
	            STR[0] = "* The Crow/bar pieces fall#  to the floor and break#  into two pieces each,"
	            STR[1] = "* which then break into two#  pieces each as well, which#  then..."
	        }
	    }
	}
	script_execute(scr_menuback)



}
