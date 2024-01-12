function scr_enemy_waiting_for_textbox() {
	if (waitingfortext == 1)
	{
	    if (!instance_exists(obj_text_box_battle))
	    {
	        thisone = 0
	        global.isacting = 0
	        waitingfortext = 0
	        instance_create(0, 0, obj_actwave)
	        instance_create(108, 0, obj_actwave)
	        instance_create(214, 0, obj_actwave)
	    }
	}



}
