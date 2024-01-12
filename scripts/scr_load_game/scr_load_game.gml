function scr_load_game() {
	if (global.amountofsaves > 0)
	{
	    audio_stop_all()
	    game_load(global.savename)
	    script_execute(scr_progress_load)
	    script_execute(scr_load_universal)
	    script_execute(scr_load_hired_and_killed)
	    script_execute(scr_load_story)
	}
	else
	    room_goto(rm_inm_nameinput)



}
