function scr_call() {
	if (rightypos == 1 && global.saninr == 1)
	    global.phonetext = global.saniphonetext
	if (global.phonetext != 0)
	{
	    global.phonetext = 0
	    instance_create(x, y, obj_wait_for_me)
	    if (!instance_exists(obj_text_box))
	    {
	        instance_create(x, y, obj_text_box)
	        with (obj_text_box)
	        {
	            MAXSTR = 0
	            STR[0] = "* Hello! And welcome to#  the world of Pokemon.#  I am your host, Jerma985."
	        }
	    }
	}



}
