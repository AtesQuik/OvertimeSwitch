function scr_transition_when_ready() {
	if (global.transition == 1)
	{
	    script_execute(scr_room_change)
	    global.transition = 2
	}



}
